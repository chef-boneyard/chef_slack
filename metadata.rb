name             'chef_slack'
maintainer       'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license          'Apache 2.0'
description      'slack LWRP for notifying slack.com channels'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

%w(redhat centos scientific fedora debian ubuntu arch freebsd amazon).each do |os|
  supports os
end

source_url 'https://github.com/chef-cookbooks/chef_slack' if respond_to?(:source_url)
issues_url 'https://github.com/chef-cookbooks/chef_slack/issues' if respond_to?(:issues_url)
