class Polititian < ActiveRecord::Base
  belongs_to :home
  belongs_to :admin
  
  @image_url_match = /\.(png|jpg|gif)\Z/ 
  @twitter_match = /\A(@)[a-zA-Z0-9_]{1,15}\Z/
  
  validates :name, presence: true, uniqueness: true
  validates :avatar, presence: true, format: {with: @image_url_match, message: "Must be a valid image"}
  validates :feature_image, presence: true, format: {with: @image_url_match, message: "Must be a valid image"}
  validates :twitter_handle, presence: true, format: {with: @twitter_match, messsage: "Must be valid handle, starts with @"}
  validates :link, presence: true
end
