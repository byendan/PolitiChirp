require 'test_helper'

class PolititianTest < ActiveSupport::TestCase
  
  def setup
    @valid_pundit = polititians(:valid_pundit)
    @invalid_pundit = polititians(:invalid_pundit)
    @image_url_match = /\.(png|jpg|gif)\Z/ 
    @twitter_match = /\A(@)[a-zA-Z0-9_]{1,15}\Z/
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
  
  test "valid polititian" do
    assert @valid_pundit.valid?
  end
  
  test "invalid polititian" do
    assert_not @invalid_pundit.valid?
  end
  
  test "valid images" do 
    assert_match @image_url_match, @valid_pundit[:avatar]
    assert_match @image_url_match, @valid_pundit[:feature_image]
  end
  
  test "invalid images" do
    assert_no_match @image_url_match, @invalid_pundit[:avatar]
    assert_no_match @image_url_match, @invalid_pundit[:feature_image]
  end
  
  test "valid twitter handle" do
    assert_match @twitter_match, @valid_pundit[:twitter_handle]
  end
  
  test "invalid twitter handle" do
    assert_no_match @twitter_match , @invalid_pundit[:twitter_handle]
  end
  
  test "same names invalid" do
    @invalid_pundit.name = "name"
    assert_not @invalid_pundit.valid? 
  end
  
end
