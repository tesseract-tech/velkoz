defmodule Velkoz.Region do

  @regions ["br","eune","euw","kr","lan","las","na","oce","tr","ru","pbe","global"]

  def base_url(region) when region in @regions do
        "https://#{region}.api.pvp.net"
  end
end
