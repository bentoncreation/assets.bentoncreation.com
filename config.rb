require 'tumblargh'

activate :livereload
activate :directory_indexes
activate :settings
activate :tumblargh,
  api_key: middleman_settings['tumblargh']['api_key'],
  blog: middleman_settings['tumblargh']['blog']

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

page '/about.html', layout: false

configure :build do
  set :asset_host, middleman_settings['build']['asset_host']

  helpers do
    def asset_path(kind, source)
      "#{asset_host}#{super}"
    end
  end

  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
end

activate :deploy do |deploy|
  deploy.build_before = true
  deploy.method = :rsync
  deploy.clean = true
  deploy.user = middleman_settings['deploy']['user']
  deploy.host = middleman_settings['deploy']['host']
  deploy.path = middleman_settings['deploy']['path']
  deploy.port = middleman_settings['deploy']['port']
end
