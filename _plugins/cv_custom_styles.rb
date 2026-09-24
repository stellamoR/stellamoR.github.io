# frozen_string_literal: true

Jekyll::Hooks.register :pages, :post_render do |page|
  next unless page.data["layout"] == "cv"

  baseurl = page.site.config["baseurl"].to_s.chomp("/")
  stylesheet = %(<link rel="stylesheet" href="#{baseurl}/assets/css/cv-custom.css">)
  page.output = page.output.sub("</head>", "  #{stylesheet}\n</head>")
end
