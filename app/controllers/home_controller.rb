class HomeController < ApplicationController
  skip_before_action :authorize 

  require "twitter"
  def show
    @polititians = (fill_pundits(Polititian.all))
  end

end
