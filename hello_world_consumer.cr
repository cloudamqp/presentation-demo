require "amqp-client"

AMQP::Client.start do |c|
  c.channel do |ch|
    q = ch.queue("kicki-q")
    puts "Waiting for messages. To exit press CTRL+C"
    q.subscribe(block: true) do |msg|
      puts "Received: #{msg.body_io.to_s}"
    end
  end
end
