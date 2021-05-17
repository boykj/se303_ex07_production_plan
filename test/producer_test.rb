gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/producer'

class ProducerTest < Minitest::Test

	describe 'no producers' do

		before(:each) {
			DATA = {
				name: "no producers",
				producers: [],
				demand: 30,
				price: 20
			}
			let noProducers = Province.new(DATA)
		}

	end

end
