  require "amqp-client"

AMQP::Client.start("amqps://tjejerkodar:84codes@test-freezing-barnacle.lmq.cloudamqp.com/tjejerkodar") do |c|
  c.channel do |ch|
    msg = "Hello, jag heter kicki och min favoritfärg är BLÅ!"
    ch.basic_publish msg, exchange: "kicki-e", routing_key: "color.blå"
    puts "Sent: #{msg}"

    # msg = "Hello RÖD!"
    # ch.basic_publish msg, exchange: "kicki-e", routing_key: "color.röd"
    # puts "Sent: #{msg}"
  end
end
