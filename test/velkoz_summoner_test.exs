defmodule VelkozSummonerTest do
  use ExUnit.Case, async: true
  import Velkoz.Summoner
  doctest Velkoz.Summoner
  test "Can get summoner" do
    r = byName("na","zerovapor")
    assert (200 = r.status_code)
  end
end
