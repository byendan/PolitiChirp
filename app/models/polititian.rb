class Polititian < ActiveRecord::Base
  belongs_to :home
  belongs_to :admin
  
  validates :name, presence: true
  validates :avatar, presence: true
  validates :feature_image, presence: true
  validates :twitter_handle, presence: true
  validates :link, presence: true
end
