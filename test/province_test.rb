gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/province'
require_relative '../lib/data'

class ProvinceTest < Minitest::Test

  def test_province_shortfall
    asia = Province.new(sample_province_data)
    assert_equal(5, asia.shortfall)
  end

  describe "basic_tests" do

    let(asia = Province.new(sample_province_data))

    it "tests the province shortfall" do
      assert_equal(5, asia.shortfall)
    end

    it "tests the province profit" do
      assert_equal(230, asia.profit)
    end

  end

end
