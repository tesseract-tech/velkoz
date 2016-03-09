defmodule VelkozSummonerTest do
  use ExUnit.Case, async: false
  import Velkoz.Summoner
  doctest Velkoz.Summoner
  test "Should get summoner by name" do
    r = by_name("na","zerovapor")
    assert (200 = r.status_code)
  end

  test "Should get summoner by id" do
    r = by_ids("na","33739329")
    assert (200 = r.status_code)
  end

end
