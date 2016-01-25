require 'test_helper'

class PolititianTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end
  
  test "polititian fields must not be empty" do

    pundit = Polititian.new
    assert pundit.invalid?
    assert pundit.errors[:name].any?
    assert pundit.errors[:avatar].any?
    assert pundit.errors[:feature_image].any?
    assert pundit.errors[:twitter_handle].any?
    assert pundit.errors[:link].any?
  end
  
end
