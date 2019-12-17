class MeetupController < ApplicationController
  skip_before_action :authorize_user  # to DELETE
  def index
    @activities = Activity.all
  end
end
