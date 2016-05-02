defmodule Velkoz.StaticData do
  import Velkoz.Utility


  @doc """
  Retrieves champion list.
  """
  def champion(region) do
    build_url(region) <> "/champion"
    |>Velkoz.get(region)
  end

  @doc """
  Retrieves a champion by its id.
  """
  def champion(region, champion_id) do
    build_url(region) <> "/champion/#{champion_id}"
    |>Velkoz.get(region)
  end

  @doc """
  Retreives items list
  """
  def items(region, queryMap \\ %{}) do
    build_static_url(region) <> "/item?" <> build_query_string(queryMap)
    |>Velkoz.get(region)
  end

  @doc """
  Retreives item by id
  """
  def item_by_id(region, item_id, queryMap \\ %{}) do
    build_static_url(region) <> "/item/#{item_id}?" <> build_query_string(queryMap)
    |>Velkoz.get(region)
  end


  @doc """
  Retreives language string data
  """
  def language_string(region) do
    build_static_url(region) <> "/language-strings"
    |>Velkoz.get(region)
  end

  @doc """
  Retreives supported language data.
  """
  def languages(region) do
    build_static_url(region) <> "/languages"
    |>Velkoz.get(region)
  end

  @doc """
  Retreives map data
  """
  def map(region) do
    build_static_url(region) <> "/map"
    |>Velkoz.get(region)
  end

  @doc """
  Retreives mastery list
  """
  def mastery(region) do
    build_static_url(region) <> "/mastery"
    |>Velkoz.get(region)
  end

  @doc """
  Retreives mastery item by its id
  """
  def mastery_by_id(region, mastery_id) do
    build_static_url(region) <> "/mastery/#{mastery_id}"
    |>Velkoz.get(region)
  end

  @doc """
  Retreives realm
  """
  def realm(region) do
    build_static_url(region) <> "/realm"
    |>Velkoz.get(region)
  end


  @doc """
  Retreives rune list
  """
  def runes(region) do
    build_static_url(region) <> "/rune"
    |>Velkoz.get(region)
  end

  @doc """
  Retreives rune by its id
  """
  def rune_by_id(region, rune_id) do
    build_static_url(region) <> "/rune/#{rune_id}"
    |>Velkoz.get(region)
  end

  @doc """
  Retreives summoner spell list
  """
  def summoner_spells(region) do
    build_static_url(region) <> "/summoner-spell"
    |>Velkoz.get(region)
  end

  @doc """
  Retreives summoner spell by id
  """
  def summoner_spell_by_id(region, spell_id) do
    build_static_url(region) <> "/summoner-spell/#{spell_id}"
    |>Velkoz.get(region)
  end

  @doc """
  Retreives version data.
  """
  def versions(region) do
    build_static_url(region) <> "/versions"
    |>Velkoz.get(region)
  end


  @doc """
   simply builds the url for this module
  """
  def build_url(region) do
    base_url("global")
    <> "/api/lol/#{region}/v" <> get_endpoint_version(:lolStaticData_version)
  end

  @doc """
   simply builds the url for this module
  """
  def build_static_url(region) do
    base_url("global")
    <> "/api/lol/static-data/#{region}/v" <> get_endpoint_version(:lolStaticData_version)
  end

end
