gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/province'
require_relative '../lib/data'

class ProvinceTest < Minitest::Test

  describe "province tests" do

    let(asia = Province.new(sample_province_data))

    before(:each) {
      asia = Province.new(sample_province_data)
      #DATA = {
      #  name: "No producers",
      #  producers: [],
      #  demand: 30,
      #  price: 20
      #}
      #noProducers = Province.new(DATA)
    }

    it "tests the province shortfall" do
      assert_equal(5, asia.shortfall)
    end

    it "tests the province profit" do
      assert_equal(230, asia.profit)
    end

    it "tests the productions changes" do
      asia.producers[0].production = 20;
      assert_equal(-6, asia.shortfall)
      assert_equal(292, asia.profit)
    end

    it "tests the zero demand" do
      asia.demand = 0;
      assert_equal(-25, asia.shortfall)
      assert_equal(0, asia.profit)
    end

    it "tests the negative demand" do
      asia.demand = -1;
      assert_equal(-26, asia.shortfall)
      assert_equal(-10, asia.profit)
    end

    it "tests the string function" do
      asia.demand = ""
      assert_equal true, asia.demand.is_a?(String)
      #assert_equal false, asia.shortfall.is_a?(Integer)
    end

  end

end
