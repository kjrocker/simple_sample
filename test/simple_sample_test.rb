require 'test_helper'

class SimpleSample::Test < ActiveSupport::TestCase
  def add_doges(count = 1)
    count.times do
      Doge.create(name: ['Smolboye', 'Druggo', 'Goodgirle', 'Borkboye'].sample)
    end
  end

  def remove_doges
    Doge.delete_all
  end

  test "truth" do
    assert_kind_of Module, SimpleSample
  end

  test "doge responds to sample" do
    assert_respond_to Doge, :sample
  end

  test "sample contains correct amount" do
    add_doges(3)
    assert_equal Doge.sample(2).count, 2
    remove_doges
  end

  test "sample contains 1 by default" do
    add_doges(2)
    assert_equal Doge.sample.count, 1
    remove_doges
  end
end
