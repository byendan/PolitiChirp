class Polititian < ActiveRecord::Base
  belongs_to :home
  belongs_to :admin
end
