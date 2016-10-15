class VisitorsController < ApplicationController
  def index
    @users = User.joins(:observations).group('users.id').order('count(users.id) DESC').limit 10
    @range = Observation.group('category').order('count(category) DESC').count
  end
end
