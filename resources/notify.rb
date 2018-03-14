provides :slack_notify

property :message, String, name_property: true
property :channels, Array, default: []
property :username, String
property :webhook_url, String
property :icon_emoji, String

action :notify do
  # install the gem if missing
  begin
    require 'slack-notifier'
  rescue LoadError
    chef_gem 'slack-notifier' do
      compile_time true
    end

    require 'slack-notifier'
  end

  slack = if node['slack']['webhook_url']
            Slack::Notifier.new(node['slack']['webhook_url'])
          else
            Slack::Notifier.new(new_resource.webhook_url)
          end

  if new_resource.channels.empty?
    options = {}
    options['username'] = new_resource.username if new_resource.username
    options['icon_emoji'] = new_resource.icon_emoji if new_resource.icon_emoji
    converge_by "notify Slack with message: #{new_resource.message}" do
      slack.ping(new_resource.message, options)
    end
  else
    new_resource.channels.each do |channel|
      options = {}
      options['channel'] = channel if new_resource.channels
      options['username'] = new_resource.username if new_resource.username
      options['icon_emoji'] = new_resource.icon_emoji if new_resource.icon_emoji
      converge_by "notify Slack channel #{channel} with message: #{new_resource.message}" do
        slack.ping(new_resource.message, options)
      end
    end
  end
end
