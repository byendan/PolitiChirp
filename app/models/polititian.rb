class Polititian < ActiveRecord::Base
  belongs_to :home
  belongs_to :admin
  
  validates :twitter_handle, presence: true
end
