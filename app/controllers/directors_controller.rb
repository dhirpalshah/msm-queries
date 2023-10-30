class DirectorsController < ApplicationController
  def index
    render({:template => "director_templates/list"})
  end

  def show
    director_id = params["director_id"]

    @director = Director.where({:id => director_id}).at(0)
    
    
    render({:template => "director_templates/details"})

  end
  
end
