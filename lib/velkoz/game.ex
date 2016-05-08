defmodule Velkoz.Game do
  import Velkoz.Utility

  @doc """
  returns a list of recent games by summonerid (max 10 )
  """
  def get(region, summonerId) do
    build_url(region) <> "/game/by-summoner/#{summonerId}/recent"
    |>Velkoz.get(region)
  end

  @doc """
   simply builds the url for this module
  """
  def build_url(region) do
    base_url(region)
    <> "/api/lol/#{region}/v" <> get_endpoint_version(:game_version)
  end

end
