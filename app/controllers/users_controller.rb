# curl 'http://localhost:3000/users/index?latitude=17.2545&longitude=2.4343'

class UsersController < ApplicationController
  before_action :find_users, only: [:index]

  # Hardcoded
  RADIUS = 30

  def index
    latitude, longitude  = params[:latitude], params[:longitude]

    users = User.all

    render json: users.to_json(only: [:name, :surname, :gender])
  end

  def show
  end

  private
    # Find users that only in specific radius
    def find_users
    end
end
