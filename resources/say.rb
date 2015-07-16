actions        :say
default_action :say

attribute      :message,    :kind_of => String, :name_attribute => true
attribute      :team,       :kind_of => String
attribute      :api_key,    :kind_of => String
attribute      :channels,   :kind_of => Array
attribute      :username,   :kind_of => String
attribute      :icon_url,   :kind_of => String
attribute      :icon_emoji, :kind_of => String

def initialize(*args)
  super
  @action = :say
end
