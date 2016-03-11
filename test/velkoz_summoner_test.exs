defmodule VelkozSummonerTest do
  use ExUnit.Case, async: false
  import Velkoz.Summoner
  doctest Velkoz.Summoner
  test "Should get summoner by name" do
    r = by_name("na","zerovapor")
    assert (Map.has_key?(r, "zerovapor") )
  end

  test "Should get summoner by id" do
    r = by_ids("na","33739329")
    assert (Map.has_key?(r, "33739329") )
  end

  test "should return a list of player masteries" do
    r = masteries("na","33739329")
    assert (Map.has_key?(r, "33739329") )
  end

  test "should return a summoner name by id" do
    r = name("na","33739329")
    assert (Map.has_key?(r, "33739329") )
  end

  test "should return a list of player runes" do
    r = runes("na","33739329")
    assert (Map.has_key?(r, "33739329") )
  end

end
