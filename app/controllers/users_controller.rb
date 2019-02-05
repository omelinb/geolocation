class UsersController < ApplicationController
  before_action :find_users, only: :index
  before_action :get_user, only: :show

  RADIUS = 30

  # GET /users/?coords=latitude,longitude
  def index
    render json: @users.select(:id, :name, :surname, :gender)
  end

  # GET /users/1
  def show
    render json: @user.to_json(only: [:age, :latitude, :longitude])
  end


  private
    # Find users that are in the specific radius
    def find_users
      @users = User.within(RADIUS, origin: user_params)
    end

    def get_user
      @user = User.find(params[:id])
    end

    def user_params
      params.fetch(:coords)
    end
end
