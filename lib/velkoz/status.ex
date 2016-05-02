defmodule Velkoz.Status do
  import Velkoz.Utility

  @doc """
  returns a shard list
  """
  def shards(region) do
    status_url() <> "/shards"
    |>Velkoz.get(region)
  end

  @doc """
  returns a shard data by region
  """
  def shard_by_region(region) do
    status_url() <> "/shards/#{region}"
    |>Velkoz.get(region)
  end


end
