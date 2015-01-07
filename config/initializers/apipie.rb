Apipie.configure do |config|
  config.app_name                = "Tianji Baby API Project"
  config.api_base_url            = "/api"
  config.doc_base_url            = "/apidoc" #"/apipie"
  # where is your API defined?
  config.api_controllers_matcher = "#{Rails.root}/app/controllers/*.rb"

  config.default_version = 'v1'
  config.copyright = "&copy; #{Time.now.year} Tianji"
  config.app_info = "Long app info here!"
end
