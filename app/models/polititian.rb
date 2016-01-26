class Polititian < ActiveRecord::Base
  belongs_to :home
  belongs_to :admin
  
  @twitter_match = /\A[a-zA-Z0-9_]{1,15}\Z/
  
  validates :twitter_handle, presence: true
end
