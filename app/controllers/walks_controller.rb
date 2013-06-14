class WalksController < ApplicationController
  before_filter :check_if_logged_in, :only => [:new, :create, :edit, :update]
  def index
    @walks = Walk.all
  end
  def new
    @walk = Walk.new
  end
   def create
    @walk = Walk.create(params[:walk])
    @auth.dogs.first.walks << @walk
    redirect_to(walks_path)
  end
  def show
    @walk = Walk.find(params[:id])
  end

  def update
    @walk = Walk.find(params[:id])
    unless @walk.in?(@auth.dogs.first.walks)
      @auth.dogs.first.walks << @walk
    end
  end
  def search
    query = params[:query]
    @walks = Walk.where("neighborhood @@ :q or description @@ :q", :q => query)
    dogs = Dog.where("name @@ :q", :q => query)
    @walks += dogs.map(&:interviews).flatten
    @walks.uniq!
    render :filter
  end
  def filter
    dog = Dog.find(params[:dog_id])
    @walks = dog.walks
  end
end