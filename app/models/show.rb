class Show < ActiveRecord::Base

  def highest_rating
    Show.maximum(:rating)
  end

  def most_popular_show
    show = Show.maximum(:rating)
    show.name
  end

  def lowest_rating
    Show.minimum(:rating)
  end

  def least_popular_show
    show = Show.minimum(:rating)
    show.name
  end

  def rating_sums
    Show.sum(:rating)
  end

  def popular_shows
    Show.where("rating => ?", 5[:names])
  end

  def shows_by_alphabetical_order
    Show.order(:name)ASC
  end
