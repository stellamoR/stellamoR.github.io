---
layout: post
title: Bundestag — Reden und Zwischenrufe
date: 2026-09-24
description: Lorem ipsum dolor sit amet, consectetur adipiscing elit.
tags: data-visualization
categories: projects
---

<style>
  .bundestag-embed {
    margin: 1.25rem 0 2rem;
  }

  .bundestag-embed iframe {
    display: block;
    width: 100%;
    min-height: 1200px;
    border: 0;
  }

  .bundestag-embed--relationships iframe {
    min-height: 1550px;
  }

  .bundestag-embed--current iframe {
    min-height: 760px;
  }

  @media (max-width: 576px) {
    .bundestag-embed iframe {
      min-height: 1400px;
    }

    .bundestag-embed--relationships iframe {
      min-height: 1750px;
    }

    .bundestag-embed--current iframe {
      min-height: 720px;
    }
  }
</style>

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.

## Lorem ipsum

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.

<div class="bundestag-embed bundestag-embed--timeline">
  <iframe
    src="https://stellamo-bundestag-stats.hf.space/?embed=1&amp;view=timeline&amp;plot=interruptions-by-party&amp;__theme=light"
    title="Bundestag statistics timeline"
    loading="lazy"
    allow="clipboard-write"
  ></iframe>
</div>

## Dolor sit amet

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore.

<div class="bundestag-embed bundestag-embed--relationships">
  <iframe
    src="https://stellamo-bundestag-stats.hf.space/?embed=1&amp;view=relationships&amp;plot=heatmap&amp;__theme=light"
    title="Bundestag interruption relationships"
    loading="lazy"
    allow="clipboard-write"
  ></iframe>
</div>

## Consectetur adipiscing elit

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia.

<div class="bundestag-embed bundestag-embed--current">
  <iframe
    src="https://stellamo-bundestag-stats.hf.space/?embed=1&amp;view=current&amp;plot=daily&amp;__theme=light"
    title="Current Bundestag statistics"
    loading="lazy"
    allow="clipboard-write"
  ></iframe>
</div>

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium.
