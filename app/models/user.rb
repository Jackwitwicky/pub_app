class User < ApplicationRecord
  after_save :publish_user

  private

  def publish_user
    return true if previous_changes.empty?

    # publish user update
    action = id_previously_changed? ? 'create' : 'update'
    UserPublisher.publish(self, action)
  end
end
