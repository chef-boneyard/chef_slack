def whyrun_supported?
  true
end

use_inline_resources

action :notify do
  slack = if node['slack']['webhook_url']
            Slack::Notifier.new(node['slack']['webhook_url'])
          else
            Slack::Notifier.new(new_resource.webhook_url)
          end

  new_resource.channels.each do |channel|
    options = {}
    options['channel']    = channel                  if new_resource.channels
    options['username']   = new_resource.username    if new_resource.username
    slack.ping(new_resource.message, options)
  end
end
