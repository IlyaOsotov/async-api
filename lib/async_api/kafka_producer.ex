defmodule AsyncApi.KafkaProducer do
  def call(order) do
    Kaffe.Producer.produce_sync("orders-topic", "new-order", Jason.encode!(order))
  end
end