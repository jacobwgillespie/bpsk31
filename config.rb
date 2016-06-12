###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration

set :markdown,
    layout_engine: :haml,
    with_toc_data: true,
    fenced_code_blocks: true
set :markdown_engine, :redcarpet

activate :autoprefixer do |config|
  config.browsers = ['last 2 versions']
end

activate :directory_indexes
activate :vcs_time

# Reload the browser automatically whenever files change
configure :development do
  # activate :livereload
end

###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

helpers do
  def inline_css(name)
    name = "#{name}.css" unless name.to_s.include?('.css')
    css_path = sitemap.resources.select do |p|
      p.source_file.include?(name)
    end.first

    root_node = ::Sass::SCSS::CssParser.new(
      css_path.render, 'middleman-css-input', 1
    ).parse
    root_node.options = { style: :compressed }

    "<style type=\"text/css\" amp-custom>#{root_node.render.strip}</style>"
  end

  def mtime
    current_page.mtime.iso8601
  rescue
    (
      current_page.source_file ? File.mtime(current_page.source_file) : Time.now
    ).iso8601
  end
end

# Build-specific configuration
configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :minify_html
  activate :asset_hash
  activate :asset_host, host: 'https://cdn.bpsk31.com'
  activate :gzip
end
