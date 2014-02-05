slack Cookbook
==============

This cookbook sends messages to a [Slack](http://www.slack.com) chatroom using the Incoming
Webhook Integration

Requirements
------------

#### packages
- `slackr` - Uses the [slackr](https://github.com/risk-io/slackr)
  rubygem to talk to Slack

Attributes
----------

#### slack::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['slack']['team']</tt></td>
    <td>String</td>
    <td>Your Slack team-name</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['slack']['api_key']</tt></td>
    <td>String</td>
    <td>The Incoming Webhook API key</td>
    <td><tt>nil</tt></td>
  </tr>
</table>

LWRP Usage
-----

```ruby
slack "Say something clever"
```

```ruby
slack "say_something_clever" do
  message "Look I'm a Ghost! Boo!"
  icon_emoji ":ghost:"
  not_if { node['im_boring'] }
end
```

```ruby
slack "lazy_ghost" do
  message "Boo! I'm still a ghost"
  icon_emoji ":ghost:"
  action :nothing
end

something "talk_as_ghost" do
  notifies :say, "slack[lazy_ghost]", :immediately
end
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Jason Rohwedder <jro@risk.io>
