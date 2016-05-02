defmodule Velkoz.League do
  import Velkoz.Utility

  @gametypes Application.get_env(:velkoz, :game_types)

  @doc """
  Get leagues mapped by summoner ID for a given list of summoner IDs
  """
  def by_summonerIds(region, summonerId) do
    build_url(region) <> "/league/by-summoner/#{summonerId}"
    |>Velkoz.get(region)
  end

  @doc """
  Get league entries mapped by summoner ID for a given list of summoner IDs
  """
  def by_summonerId(region, summonerId) do
    build_url(region) <> "/league/by-summoner/#{summonerId}/entry"
    |>Velkoz.get(region)
  end

  @doc """
  Get leagues mapped by team ID for a given list of team IDs.
  """
  def by_teamIds(region, teamIds) do
    build_url(region) <> "/league/by-team/#{teamIds}"
    |>Velkoz.get(region)
  end

  @doc """
  Get league entries mapped by team ID for a given list of team IDs
  """
  def by_teamId(region, teamId) do
    build_url(region) <> "/league/by-team/#{teamId}/entry"
    |>Velkoz.get(region)
  end

  @doc """
  Get challenger tier leagues
  """
  def challenger(region, gameType) when gameType in @gametypes do
    build_url(region) <> "/league/challenger?type=#{gameType}"
    |>Velkoz.get(region)
  end

  @doc """
  Get master tier leagues
  """
  def master(region, gameType ) when gameType in @gametypes do
    build_url(region) <> "/league/master?type=#{gameType}"
    |>Velkoz.get(region)
  end

  @doc """
   simply builds the url for this module
  """
  def build_url(region) do
    base_url(region)
    <> "/api/lol/#{region}/v" <> get_endpoint_version(:league_version)
  end

end
