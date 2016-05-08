defmodule VelkozSummonerTest do
  use ExUnit.Case, async: false
  import Velkoz.Summoner
  doctest Velkoz.Summoner
  test "Should get summoner by name" do
    r = by_name("na","zerovapor")
    {:ok, status} = Map.fetch(r, :status_code)
    assert (status === 200)
  end

  test "Should get summoner by id" do
    r = by_ids("na","33739329")
    {:ok, status} =  Map.fetch(r, :status_code)
    assert (status === 200)
  end

  test "should return a list of player masteries" do
    r = masteries("na","33739329")
    {:ok, status} = Map.fetch(r, :status_code)
    assert (status === 200)
  end

  test "should return a summoner name by id" do
    r = name("na","33739329")
    {:ok, status} = Map.fetch(r, :status_code)
    assert (status === 200)
  end

  test "should return a list of player runes" do
    r = runes("na","33739329")
    {:ok, status} = Map.fetch(r, :status_code)
    assert (status === 200)
  end

end
