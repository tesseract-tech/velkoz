defmodule Velkoz.Region do

  def baseUrl(region) do

        case region do
           "na" ->
             "https://na.api.pvp.net"
           "eune"->
               "https://eune.api.pvp.net"
        end

    end
end
