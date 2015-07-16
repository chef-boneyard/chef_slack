def whyrun_supported?
  true
end

use_inline_resources

action :say do
  if node['slack']['team'] || node['slack']['api_key']
    slack = Slackr.connect(node['slack']['team'],node['slack']['api_key'])
  else
    slack = Slackr.connect(new_resource.team,new_resource.api_key)
  end

    new_resource.channels.each do |channel|
      options = {}
      options["channel"]    = channel                  if new_resource.channels
      options["username"]   = new_resource.username    if new_resource.username
      options["icon_url"]   = new_resource.icon_url    if new_resource.icon_url
      options["icon_emoji"] = new_resource.icon_emoji  if new_resource.icon_emoji
      slack.say(new_resource.message,options)
  end
end
