class Show < ActiveRecord::Base

  def highest_rating
    Show.maximum("rating")
  end

  def most_popular_show
    show = Show.maximum("rating")
    show.title
  end

  def 
