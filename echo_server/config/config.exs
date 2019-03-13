# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

# To configure freddie
config :freddie,
  app_mod: :echo_server,                       # Type app name

  port: 5050,                                  # Type listen port

  redis_host: "localhost",                     # Type redis host address
  redis_port: 6379,                            # Type redis port
  redis_pool_size: 10,                         # Type redis pool size

  scheme_root_mod: EchoServer.Scheme,          # Type srotocol scheme root mod
  packet_type_mod: EchoServer.Packets.Types,   # Type packet type root mod
  packet_handler_mod: EchoServer.Handler       # Type packet handler mod (derive from Freddie.Router)
