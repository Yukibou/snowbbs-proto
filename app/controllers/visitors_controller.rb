class VisitorsController < ApplicationController
  def index
    @users = User.joins(:observations).group('users.id').order('count(users.id) DESC').limit 10
    @areas = Area.joins(:observations).group('areas.id').order('count(areas.id) DESC')
    # @range = Observation.group('category').order('count(category) DESC').count
  end
end
