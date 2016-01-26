class HomeController < ApplicationController
  require "twitter"
  def show
    @polititians = (fill_pundits(Polititian.all))
  end
  
end
