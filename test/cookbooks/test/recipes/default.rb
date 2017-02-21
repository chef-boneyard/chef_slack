slack_notify 'send_notification_message' do
  message "chef_slack test from #{node['platform']} #{node['platform_version']}"
  webhook_url 'https://hooks.slack.com/services/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'
  icon_emoji ':tada:'
end
