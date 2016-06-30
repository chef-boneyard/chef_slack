name             'chef_slack'
maintainer       'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license          'Apache 2.0'
description      'slack LWRP for notifying slack.com channels'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.0'

%w(ubuntu debian redhat centos suse opensuse opensuseleap scientific oracle amazon zlinux).each do |os|
  supports os
end

source_url 'https://github.com/chef-cookbooks/chef_slack' if respond_to?(:source_url)
issues_url 'https://github.com/chef-cookbooks/chef_slack/issues' if respond_to?(:issues_url)

chef_version '>= 11.0' if respond_to?(:chef_version)
