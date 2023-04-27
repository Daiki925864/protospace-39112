class PrototypesController < ApplicationController
  def index
  end

  def new
    @prototypes = Tweet.new
  end

  def create
  end

  private

  def prototype_params
    params.require(:prototype).permit(:content, :image).merge(user_id: current_user.id)
  end
end
