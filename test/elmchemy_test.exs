defmodule ElmchemyTest do
  use ExUnit.Case
  use Elmchemy
  doctest Hello

  test "Hello" do
    assert Hello.hello() == "world!"
  end

  test "Sum of lists" do
    assert Hello.sum([]) == 0
    assert Hello.sum([2]) == 2
    assert Hello.sum([1, 2, 3, -1, -2, -3]) == 0
  end

end
