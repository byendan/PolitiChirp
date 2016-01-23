class HomeController < ApplicationController
  
  def show
    @polititians = Polititian.all
  end
  
end
