defmodule VelkozChampionTest do
  use ExUnit.Case, async: false
  import Velkoz.Champion
  doctest Velkoz.Champion

  test "Should return list of Champions" do
    response = get("na")
    {:ok, status} = Map.fetch(response, :status_code)
    assert(status == 200)
  end

  test "Should return list of Champions that are free" do
    response = get("na", true)
    {:ok, status} =  Map.fetch(response, :status_code)
    assert(status == 200)
  end

  test "Should return details about a champion by id" do
    response = by_id("na","53")
    {:ok, status} = Map.fetch(response, :status_code)
    assert(status == 200)
  end

end
