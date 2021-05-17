gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/province'
require_relative '../lib/data'

class ProvinceTest < Minitest::Test

  describe "basic tests" do

    let(asia = Province.new(sample_province_data))

    it "tests the province shortfall" do
      assert_equal(5, asia.shortfall)
    end

    it "tests the province profit" do
      assert_equal(230, asia.profit)
    end

    it "test the zero demand" do
      asia.demand = 0;
      assert_equal(-25, asia.shortfall)
      assert_equal(0, asia.profit)
    end

  end

end
