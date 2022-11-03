class MoviesController < ApplicationController

  def movie_list
    #@list_of_movies = Movies.all

    render ({:template => "movies_template/movie_list.html.erb"})
  end


end
