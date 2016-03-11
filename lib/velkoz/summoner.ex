defmodule Velkoz.Summoner do
 import Velkoz.Region
  @doc """
    https://developer.riotgames.com/api/methods#!/1061/3663
  """
  def by_name(region, summonerName)do
    build_url(region) <> "summoner/by-name/#{summonerName}"
    |>Velkoz.get(region)
  end

  @doc """
  https://developer.riotgames.com/api/methods#!/1061/3664
  """
  def by_ids(region, summonerIds)do
    build_url(region) <> "summoner/#{summonerIds}"
    |>Velkoz.get(region)
  end

  @doc """
  https://developer.riotgames.com/api/methods#!/1061/3665
  """
  def masteries(region, summonerIds)do
    build_url(region) <> "summoner/#{summonerIds}/masteries"
    |>Velkoz.get(region)
  end

  @doc """
  https://developer.riotgames.com/api/methods#!/1061/3662
  """
  def name(region, summonerId)do
    build_url(region) <> "summoner/#{summonerId}/name"
    |>Velkoz.get(region)
  end

  @doc """
  https://developer.riotgames.com/api/methods#!/1061/3660
  """
  def runes(region, summonerId)do
    build_url(region) <> "summoner/#{summonerId}/runes"
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
