# frozen_string_literal: true

Jekyll::Hooks.register :pages, :post_render do |page|
  next unless page.data["layout"] == "cv"

  baseurl = page.site.config["baseurl"].to_s.chomp("/")
  cache_key = page.site.time.to_i
  stylesheet = %(<link rel="stylesheet" href="#{baseurl}/assets/css/cv-custom.css?v=#{cache_key}">)
  page.output = page.output.sub("</head>", "  #{stylesheet}\n</head>")
end
