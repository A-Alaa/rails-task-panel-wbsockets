class AlgorithmsController < ApplicationController
  def index
    puts Algorithm.all
    @algorithms = Algorithm.all
  end

  def new
    @algorithm = Algorithm.new
  end

  def create
    @algorithm = Algorithm.create!
    redirect_to algorithms_path
  end

end
