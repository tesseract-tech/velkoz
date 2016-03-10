defmodule Velkoz.Summoner do
 import Velkoz.Region
  @doc """
    Get summoner objects mapped by standardized summoner name for a given list of summoner names
  """
  def by_name(region, summonerName)do
    build_url(region) <> "summoner/by-name/#{summonerName}"
    |>Velkoz.get(region)
  end

  @doc """
  Get Summoner Objects mapped by summonerID for a given list of summonerIDs
  """
  def by_ids(region, summonerIds)do
    build_url(region) <> "summoner/#{summonerIds}"
    |>Velkoz.get(region)
  end

  @doc """
   simply builds the url for this module
  """
  def build_url(region) do
    base_url(region)
    <> "/api/lol/#{region}/v#{get_version}/"
  end


  def get_version() do
    Application.get_env(:velkoz, :summoner_version)
  end

end
