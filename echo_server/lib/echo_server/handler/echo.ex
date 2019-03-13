defmodule EchoServer.Handler.Echo do
  alias EchoServer.Scheme

  def handle({_meta, msg, context}) do
    # make response message
    response_packet =
      [{:msg, msg.msg}]
      |> Keyword.new()
      |> Scheme.SC_Echo.new()

    # send a meesage to session using context
    Freddie.Session.send(context, response_packet)
  end
end
