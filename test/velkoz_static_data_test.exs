defmodule VelkozSaticDataTest do
  use ExUnit.Case, async: false
  import Velkoz.StaticData

  @region "na"
  @champion_id "122"
  @item_id "2009"
  @mastery_id "6121"
  @rune_id "5235"
  @summoner_spell "12"

  test "Getting a list of champions should have a status_code of 200" do
    r = champion(@region)
    {:ok, status} = Map.fetch(r, :status_code)
    assert(status === 200)
  end

  test "Getting a champion by id should have a status_code of 200" do
    r = champion(@region, @champion_id)
    {:ok, status} = Map.fetch(r, :status_code)
    assert(status === 200)
  end

  test "Getting a list of items should have a status_code of 200" do
    r = items(@region)
    {:ok, status} = Map.fetch(r, :status_code)
    assert(status === 200)
  end

  test "Getting a item by id should have a status_code of 200" do
    r = item_by_id(@region, @item_id)
    {:ok, status} = Map.fetch(r, :status_code)
    assert(status === 200)
  end

  test "Getting language string should have a status_code of 200" do
    r = language_string(@region)
    {:ok, status} = Map.fetch(r, :status_code)
    assert(status === 200)
  end

  test "Getting language should have a status_code of 200" do
    r = languages(@region)
    {:ok, status} = Map.fetch(r, :status_code)
    assert(status === 200)
  end

  test "Getting map should have a status_code of 200" do
    r = map(@region)
    {:ok, status} = Map.fetch(r, :status_code)
    assert(status === 200)
  end

  test "Getting mastery list should have a status_code of 200" do
    r = mastery(@region)
    {:ok, status} = Map.fetch(r, :status_code)
    assert(status === 200)
  end

  test "Getting a mastery by id should have a status_code of 200" do
    r = mastery_by_id(@region, @mastery_id)
    {:ok, status} = Map.fetch(r, :status_code)
    assert(status === 200)
  end

  test "Getting realms should have a status_code of 200" do
    r = realm(@region)
    {:ok, status} = Map.fetch(r, :status_code)
    assert(status === 200)
  end

  test "Getting runes should have a status_code of 200" do
    r = runes(@region)
    {:ok, status} = Map.fetch(r, :status_code)
    assert(status === 200)
  end

  test "Getting runes by id should have a status_code of 200" do
    r = rune_by_id(@region, @rune_id)
    {:ok, status} = Map.fetch(r, :status_code)
    assert(status === 200)
  end

  test "Getting summoner spellls should have a status_code of 200" do
    r = summoner_spells(@region)
    {:ok, status} = Map.fetch(r, :status_code)
    assert(status === 200)
  end

  test "Getting summoner spell by id should have a status_code of 200" do
    r = summoner_spell_by_id(@region, @summoner_spell)
    {:ok, status} = Map.fetch(r, :status_code)
    assert(status === 200)
  end

  test "Getting versions should have a status_code of 200" do
    r = versions(@region)
    {:ok, status} = Map.fetch(r, :status_code)
    assert(status === 200)
  end

end
