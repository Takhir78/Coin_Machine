require "minitest/autorun"
require_relative "change_machine.rb"

class TestCoinMachine < Minitest::Test

	def test_accepts_numbers_only_false
		assert_equal(false,only_numbers("Gaben"))
	end

	def test_accepts_numbers_only_true
		assert_equal(true,only_numbers(30))
	end

	def test_return_right_hash
		assert_equal({:dollar=>2, :quarter=>1, :dime=>1, :nickel=>1, :penny=>1}, calculations(241))
	end	

end