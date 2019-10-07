name             'chef_slack'
maintainer       'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license          'Apache-2.0'
description      'Slack resource for posting to slack.com channels'
version          '3.1.2'

%w(ubuntu debian redhat centos suse opensuse opensuseleap scientific oracle amazon zlinux).each do |os|
  supports os
end

source_url 'https://github.com/chef-cookbooks/chef_slack'
issues_url 'https://github.com/chef-cookbooks/chef_slack/issues'
chef_version '>= 12.7'
