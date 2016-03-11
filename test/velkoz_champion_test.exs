defmodule VelkozChampionTest do
  use ExUnit.Case, async: false
  import Velkoz.Champion
  doctest Velkoz.Champion

  test "Should return list of Champions" do
    r = get("na")
    assert (Map.has_key?(r, "champions") )
  end

  test "Should return list of Champions that are free" do
    r = get("na", true)
    assert (Map.has_key?(r, "champions") )
  end

  test "Should return details about a champion by id" do
    r = by_id("na","53")
    assert (Map.has_key?(r, "botMmEnabled") )
  end

end
