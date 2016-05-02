defmodule Velkoz.Champion do
  import Velkoz.Utility

  @doc """
  returns a list of all champions
  """
  def get(region) do
    build_url(region) <> "/champion"
    |>Velkoz.get(region)
  end

  @doc """
  returns a list of free to play champions
  """
  def get(region, free_to_play) when free_to_play == true do
    build_url(region) <> "/champion?freeToPlay=true"
    |>Velkoz.get(region)
  end

  def by_id(region, champ_id) do
    build_url(region) <> "/champion/" <> champ_id
    |>Velkoz.get(region)
  end


  @doc """
   simply builds the url for this module
  """
  def build_url(region) do
    base_url(region)
    <> "/api/lol/#{region}/v" <> get_endpoint_version(:champion_version)
  end

end
