class MoviesController < ApplicationController

  def movie_list
    @list_of_movies = Movie.all

    render ({:template => "movies_template/movie_list.html.erb"})
  end

  def movie_details
    # params looks like  Parameters: {"id"=>"movies"}
    @the_movie_id = params.fetch("id")
    the_id = params.fetch("id")
    @the_director = Director.where({:id => @the_movie_id}).at(0)
    @filmography = Movie.where({:director_id => @the_movie_id})
    @the_movie = Movie.where({:id => the_id}).at(0)
    #Movie.all.at(0).title
    render ({:template => "movies_template/movie_details.html.erb"})
  end

end
