require "amqp-client"

  AMQP::Client.start("URL") do |c|
    c.channel do |ch|
      q = ch.queue("hello")
      msg = "Hello Girls!"
      q.publish_confirm msg
      puts "Sent: #{msg}"
    end
  end
