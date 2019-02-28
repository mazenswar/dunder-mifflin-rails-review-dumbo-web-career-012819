class DogsController < ApplicationController

  def index
    @dogs = Dog.all
    # @dogs.sort_by(:&employees)
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def sort
    @dogs = Dog.all
    @dogs = @dogs.sort_by do |dog|
      dog.employees.length
    end

    byebug

    render :index
  end

end
