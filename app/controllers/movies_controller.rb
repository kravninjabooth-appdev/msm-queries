class MoviesController < ApplicationController

  def movie_list
    @list_of_movies = Movie.all

    render ({:template => "movies_template/movie_list.html.erb"})
  end

  def movie_details
    # params looks like {"an id" => "42"}
    #the_id = params.fetch("an_id")
    
    #@the_director = Director.where({:id => the_id}).at(0)
    #@filmography = Movie.where({:director_id => the_id})

    render ({:template => "movies_template/movie_details.html.erb"})
  end

end
