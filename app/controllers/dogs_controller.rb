class DogsController < ApplicationController
  before_filter :check_if_logged_in
  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.create(params[:dog])
    @auth.dog = @dog
  end
end