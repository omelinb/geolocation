# curl 'http://localhost:3000/users/index?coords=17.254522,2.434317'
# curl 'http://localhost:3000/users/:id'

class UsersController < ApplicationController
  before_action :find_users, only: [:index]

  RADIUS = 30

  # GET /users/?coords=latitude,longitude
  def index
    render json: @users.to_json(only: [:id, :name, :surname, :gender])
  end

  # GET /users/1
  def show
    render json: User.select(
      :id, :name, :surname, :age, :latitude, :longitude).find(params[:id])
  end

  private
    # Find users that are in the specific radius
    def find_users
      @users = User.within(RADIUS, origin: params[:coords])
    end
end
