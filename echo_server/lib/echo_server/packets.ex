defmodule EchoServer.Packets do
  use EnumType

  # define packet type and packet number (please type full name)
  defenum Types do
    # echo
    value(EchoServer.Scheme.CS_Echo, 1)
    value(EchoServer.Scheme.SC_Echo, 2)
  end
end
