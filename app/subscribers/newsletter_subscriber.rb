class NewsletterSubscriber
  include Cloudenvoy::Subscriber

  cloudenvoy_options topics: ['users']

  def process(message)
    payload = message.payload
    puts "The payload is: #{payload}"
    logger.info("Received message #{message}")

    puts "I have received a details of a new user "
    return 204
  end
end
