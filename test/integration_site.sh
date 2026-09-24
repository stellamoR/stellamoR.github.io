#!/usr/bin/env bash
set -euo pipefail

tmp_dir="$(mktemp -d)"
tmp_site="${tmp_dir}/site"

cleanup() {
  rm -rf "${tmp_dir}"
}
trap cleanup EXIT

JEKYLL_ENV=production bundle exec jekyll build -d "${tmp_site}"

blog_index="${tmp_site}/blog/index.html"
post_page="${tmp_site}/blog/2026/bundestag-zwischenruf-statistics/index.html"
cv_page="${tmp_site}/cv/index.html"

for page in "${blog_index}" "${post_page}" "${cv_page}"; do
  if [ ! -f "${page}" ]; then
    echo "expected generated page is missing: ${page}" >&2
    exit 1
  fi
done

grep -q 'Bundestag — Reden und Zwischenrufe' "${blog_index}"
grep -q 'view=timeline&amp;__theme=light' "${post_page}"
grep -q 'view=relationships&amp;__theme=light' "${post_page}"
grep -q 'view=current&amp;__theme=light' "${post_page}"

if find "${tmp_site}" -type f \( -iname '*.pdf' -o -iname '*.doc' -o -iname '*.docx' \) -print -quit | grep -q .; then
  echo "downloadable CV document found in generated site" >&2
  exit 1
fi

echo "customized site integration checks passed"
