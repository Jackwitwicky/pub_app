class UserPublisher
  include Cloudenvoy::Publisher

  cloudenvoy_options topic: 'users'

  def payload(user, _action)
    {
      id: user.id,
      first_name: user.first_name,
      last_name: user.last_name
    }
  end

  def metadata(_user, action)
    { action: action }
  end
end
