defmodule VelkozStatusTest do
  use ExUnit.Case, async: false
  import Velkoz.Status

  @region "na"

  test "get list of regions" do
    r = shards(@region)
    {:ok, status} = Map.fetch(r, :status_code)
    assert(status === 200)
  end

  test "get status by region" do
    r = shard_by_region(@region)
    {:ok, status} = Map.fetch(r, :status_code)
    assert(status === 200)
  end

end
