name             'slack'
maintainer       'Risk I/O'
maintainer_email 'jro@risk.io'
license          'Apache 2.0'
description      'slack LWRP for notifying slack.com channels'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

%w{redhat centos scientific fedora debian ubuntu arch freebsd amazon}.each do |os|
  supports os
end

attribute "team",
  :display_name => "Slack Team Name",
  :description => "Your Slack Team Name",
  :default => nil

attribute "api_key",
  :display_name => "Slack API Key",
  :description => "Your Slack Incoming Webhook API key",
  :default => nil
