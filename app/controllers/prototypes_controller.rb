class PrototypesController < ApplicationController
  def index
  end

  def new
    @prototypes = Tweet.new
  end

  def create
  end
end
