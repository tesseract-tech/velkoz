defmodule Velkoz.CurrentGame do
  import Velkoz.Utility

  @doc """
    Get current game information for the given summoner ID
  """
  def get(region, summoner_id) do
    base_url(region)
    <> "/observer-mode/rest/consumer/getSpectatorGameInfo/"
    <> get_platform_id(region) <>"/" <> summoner_id
    |>Velkoz.get(region)
  end

end
