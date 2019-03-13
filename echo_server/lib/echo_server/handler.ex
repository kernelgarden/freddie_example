defmodule EchoServer.Handler do
  use Freddie.Router

  require Logger

  alias EchoServer.Handler

  # define (Client-Server) type protocol handler
  defhandler EchoServer.Scheme.CS_Echo do
    {meta, msg, context}
    |> Handler.Echo.handle()
  end

  # define connnection event handler
  connect do
    Logger.info("Client #{inspect(context)} is connected!")
  end

  # define disconnection event handler
  disconnect do
    Logger.info("Client #{inspect(context)} is disconnected!")
  end
end
