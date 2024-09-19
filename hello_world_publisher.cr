require "amqp-client"

AMQP::Client.start do |c|
  c.channel do |ch|
    q = ch.queue("kicki-q")
    msg = "Hello World!"
    q.publish_confirm msg
    puts "Sent: #{msg}"
  end
end
