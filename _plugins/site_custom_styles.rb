# frozen_string_literal: true

inject_system_font = lambda do |document|
  next unless document.output&.include?("</head>")

  baseurl = document.site.config["baseurl"].to_s.chomp("/")
  cache_key = document.site.time.to_i
  stylesheet = %(<link rel="stylesheet" href="#{baseurl}/assets/css/site-custom.css?v=#{cache_key}">)
  document.output = document.output.sub("</head>", "  #{stylesheet}\n</head>")
end

Jekyll::Hooks.register :pages, :post_render, &inject_system_font
Jekyll::Hooks.register :documents, :post_render, &inject_system_font
