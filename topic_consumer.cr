require "amqp-client"

AMQP::Client.start("amqps://tjejerkodar:84codes@test-freezing-barnacle.lmq.cloudamqp.com/tjejerkodar") do |c|
  c.channel do |ch|
    q = ch.queue("kicki-q")
    ch.exchange_declare("kicki-e", type: "topic")

    # Bind the queue to get all messages with color.* sent to the exchange
    q.bind("kicki-e", routing_key: "color.*")

    # Bind the queue to get all messages with color.blå sent to the exchange
    # q.bind("kicki-e", routing_key: "color.blå")

    puts "Waiting for messages. To exit press CTRL+C"
    q.subscribe(block: true) do |msg|
      puts "Received: #{msg.body_io.to_s}"
    end
  end
end
