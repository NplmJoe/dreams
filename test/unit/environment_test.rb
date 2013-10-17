require 'test_helper'

class EnvironmentTest < ActiveSupport::TestCase
  test "environment attributes must not be empty" do
    environment = Environment.new
    assert environment.invalid?
    assert environment.errors[:name].any?
    assert environment.errors[:description].any?
  end

  test "environment is not valid without a unique name" do
    environment = Environment.new(name: environments(:dup).name,
				  description: "Duplicate environment",
				  integrated: true)
    assert environment.invalid?
    assert_equal ["has already been taken"], environment.errors[:name]
  end
end
