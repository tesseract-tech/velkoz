defmodule Velkoz.ChampionMastery do
import Velkoz.Utility

@platform_ids  Application.get_env(:velkoz, :platform_ids)

@doc """
Get a champion mastery by player id and champion id.
"""
def champion_mastery_for_player(region, summoner_id, champion_id) do
  build_url(region)
  <> "/player/#{summoner_id}/champion/#{champion_id}"
  |>Velkoz.get(region)
end

@doc """
Get all champion mastery entries sorted by number of champion points
 descending
"""
def player_champion_masteries(region, summoner_id) do
  build_url(region)
  <> "/player/#{summoner_id}/champions"
  |>Velkoz.get(region)
end

@doc """
Get a player's total champion mastery score, which is the sum of individual
 champion mastery levels
"""
def player_score(region, summoner_id)do
  build_url(region)
  <> "/player/#{summoner_id}/score"
  |>Velkoz.get(region)
end

@doc """
Get specified number of top champion mastery entries sorted by number of
champion points desceneing
"""
def top_champs(region, summoner_id, count \\ 3) do
  build_url(region)
  <>"/player/#{summoner_id}/topchampions?count=#{count}"
  |>Velkoz.get(region)
end


@doc """
 simply builds the url for this module
"""
def build_url(region) do
  base_url(region)
  <> "/championmastery/location/" <> get_platform_id(region)
end


end
