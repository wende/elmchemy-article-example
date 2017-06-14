defmodule CharacterTest do
  use ExUnit.Case
  use Elmchemy

  test "Has name, last name and such" do
    gordon = Character.new("Gordon", "Freemonad", :male)

    assert gordon.name == "Gordon"
    assert gordon.surname == "Freemonad"
    assert gordon.gender == :male
  end

  test "Has stats" do
    gordon = Character.new("Gordon", "Freemonad", :male)

    stats = [:strength, :intelligence, :vitality]
    for s <- stats do
      assert is_integer(gordon.stats[s]), "No #{s} stat in #{inspect gordon}"
    end

    assert Character.set_stat(:vitality, 10, gordon).stats.vitality = 10
  end

  test "Boosting vitality boosts health" do
    gordon = Character.new("Gordon", "Freemonad", :male)

    {hp, packed_gordon_max} = Character.set_stat(:vitality, 10, gordon).health
    {_, weak_gordon_max} = Character.set_stat(:vitality, 0, gordon).health

    assert packed_gordon_max > weak_gordon_max
    assert hp == packed_gordon_max
  end

  test "Can equip weapon only if intelligence is enough" do
    gordon = Character.new("Gordon", "Freemonad", :male)
    weapon = Weapon.new("Sci fi blaster thingy", 9, 100)

    dumb_gordon  = Character.set_stat(:intelligence, 0, gordon)
    smart_gordon = Character.set_stat(:intelligence, 10, gordon)

    assert {:error, "Too dumb"} = Character.equip(weapon, dumb_gordon)
    assert {:ok, equipped_gordon} = Character.equip(weapon, smart_gordon)
    assert equipped_gordon.arm == {weapon}
  end



end
