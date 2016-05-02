defmodule Velkoz.FeaturedGames do
import Velkoz.Utility

@platform_ids  Application.get_env(:velkoz, :platform_ids)

@doc """
Get a list of featured games in a region
"""
def get(region) do
  base_url(region)
  <> "/observer-mode/rest/featured"
  |>Velkoz.get(region)
end

end
