directory node["app"]["web_dir"] do
    owner "www-data"
    group "www-data"
    recursive true
    mode 00755
    action :create
end


execute "rsync" do
  command "sudo rsync -av /tmp/helloworld/* %s" % node["app"]["web_dir"]
  action :run
end


template "#{node['nginx']['dir']}/sites-enabled/helloworld" do
  source "helloworld.erb"
  owner "root"
  group "root"
  mode 00644
  notifies :reload, 'service[nginx]'
end
