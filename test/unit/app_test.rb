require 'test_helper'

class AppTest < ActiveSupport::TestCase
  test "application is not valid without a unique name" do
    app = App.new(name: apps(:dup).name,
		  dev_lead: "nobody",
		  support_lead: "No One")
    assert app.invalid?
    assert_equal ["has already been taken"], app.errors[:name]
  end

  test "application attributes must not be empty" do
    app = App.new
    assert app.invalid?
    assert app.errors[:name].any?
    assert app.errors[:dev_lead].any?
    assert app.errors[:support_lead].any?
  end
end
