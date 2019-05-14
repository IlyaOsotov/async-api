defmodule AsyncApi.KafkaProducer do
  def send_new(order) do
    Kaffe.Producer.produce_sync("orders-topic", "new-order", Jason.encode!(order))
  end

  def send_update(order) do
    Kaffe.Producer.produce_sync("orders-topic", "update-order", Jason.encode!(order))
  end
end