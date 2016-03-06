defmodule Velkoz.Summoner do



  def byName(region, summonerName)do
    Velkoz.Region.baseUrl(region) <> "/api/lol/#{region}/v#{getVersion}/summoner/by-name/#{summonerName}"
    |>Velkoz.get
  end

  def getVersion() do
    Application.get_env(:velkoz, :summoner_version)
  end

end
