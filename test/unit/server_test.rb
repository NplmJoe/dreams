require 'test_helper'

class ServerTest < ActiveSupport::TestCase
  test "server attributes must not be empty" do
    server = Server.new
    assert server.invalid?
    assert server.errors[:name].any?
    assert server.errors[:app_id].any?
    assert server.errors[:environment_id].any?
  end
end
