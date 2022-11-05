class ActorsController < ApplicationController

  def actor_list
    @list_of_actors = Actor.all

    render ({:template => "actors_template/actor_list.html.erb"})
  end

  def actor_details
   
    the_id = params.fetch("id")
    
    #@the_director = Director.where({:id => the_id}).at(0)
    @the_actor = Actor.where({:id => the_id}).at(0)
    @the_director = Director.where({:id => the_id}).at(0)
    @filmography = Movie.where({:director_id => the_id})
    @character = Character.where({:id => the_id})

    render ({:template => "actors_template/actor_details.html.erb"})
  end


end
