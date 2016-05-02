defmodule VelkozUtiltiyTest do
  use ExUnit.Case, async: true
  import Velkoz.Utility

  test "Given a region name it should return a platform id " do
    r = get_platform_id("na")
    assert (r == "NA1")
  end

  test "given a corrent region should return base url for api" do
      r = base_url("na")
      assert(r == "https://na.api.pvp.net")
  end

  test "given a map of data should return a query string" do
    testMap = %{location: "test1", location2: "test2"}
    assert(build_query_string(testMap) === "location=test1&location2=test2")
  end

end
