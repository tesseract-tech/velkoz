defmodule Velkoz.Summoner do

  @doc """
    Get summoner objects mapped by standardized summoner name for a given list of summoner names
  """
  def by_name(region, summonerName)do
    Velkoz.Region.baseUrl(region)
    <> "/api/lol/#{region}/v#{get_version}/summoner/by-name/#{summonerName}"
    |>Velkoz.get(region)
  end

  @doc """
  Get Summoner Objects mapped by summonerID for a given list of summonerIDs
  """
  def by_ids(region, summonerIds)do
    Velkoz.Region.baseUrl(region)
    <> "/api/lol/#{region}/v#{get_version}/summoner/#{summonerIds}"
    |>Velkoz.get(region)
  end

  def get_version() do
    Application.get_env(:velkoz, :summoner_version)
  end

end
