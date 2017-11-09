defmodule Discuss.CommentsChannel do
  use Discuss.Web, :channel

  def join(topic, _params, socket) do
    IO.puts("+++++")
    IO.inspect(topic)

    {:ok, %{hey: "there"}, socket}
  end

  def handle_in(topic, message, socket) do
    IO.puts("++++")
    IO.inspect(topic)
    IO.puts("++++")
    IO.inspect(message)

    {:reply, :ok, socket}
  end
end