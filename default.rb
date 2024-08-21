# recipes/default.rb

# Update package lists
execute 'apt-get update' do
  command 'apt-get update'
end

# Install nginx package
package 'nginx' do
  action :install
end

# Ensure nginx service is started and enabled
service 'nginx' do
  action [:enable, :start]
end
