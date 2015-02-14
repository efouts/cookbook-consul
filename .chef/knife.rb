current_dir              File.dirname(__FILE__)
user                     ENV['OPSCODE_USER'] || ENV['USER']
organization_name        "default"
node_name                user
client_key               "#{ENV['HOME']}/.chef/#{user}.pem"
validation_client_name   "#{organization_name}-validator"
validation_key           "#{ENV['HOME']}/.chef/#{organization_name}-validator.pem"
chef_server_url          "https://chef.efouts.com/organizations/#{organization_name}"
syntax_check_cache_path  "#{ENV['HOME']}/.chef/syntax_check_cache"
cookbook_path            "#{current_dir}/../cookbooks"

knife[:rackspace_api_username] = ENV['RACKSPACE_USERNAME']
knife[:rackspace_api_key] = ENV['RACKSPACE_API_KEY']
knife[:rackspace_region] = ENV['RACKSPACE_REGION']
