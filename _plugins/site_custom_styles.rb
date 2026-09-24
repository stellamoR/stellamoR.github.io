# frozen_string_literal: true

inject_system_font = lambda do |document|
  next unless document.output&.include?("</head>")

  baseurl = document.site.config["baseurl"].to_s.chomp("/")
  cache_key = document.site.time.to_i
  stylesheet = %(<link rel="stylesheet" href="#{baseurl}/assets/css/site-custom.css?v=#{cache_key}">)
  light_theme_default = <<~HTML.strip
    <script>
      if (!["light", "dark", "system"].includes(localStorage.getItem("theme"))) {
        localStorage.setItem("theme", "light");
      }
    </script>
  HTML
  document.output = document.output.sub("</head>", "  #{stylesheet}\n  #{light_theme_default}\n</head>")
end

Jekyll::Hooks.register :pages, :post_render, &inject_system_font
Jekyll::Hooks.register :documents, :post_render, &inject_system_font
