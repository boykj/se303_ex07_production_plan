gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/province'
require_relative '../lib/producer'

class ProducerTest < Minitest::Test

	describe 'no producers' do

		data = {
			name: "no producers",
			producers: [],
			demand: 30,
			price: 20
		}

		let(noProducers = Province.new(data))

		before(:each) {
			noProducers = Province.new(data)
		}

		it "tests the producer shortfall" do
			assert_equal(30, noProducers.shortfall)
		end

	end

end
