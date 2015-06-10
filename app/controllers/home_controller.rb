class HomeController < ApplicationController

  def form
    if request.post?
      @result = Result.create!(name: params[:name], chocolate: params[:chocolate], rainbows: params[:rainbows], cold_hard_cash: params[:cash])
    end
  end

  def show
  end

  def new
    @result = Result.new
  end

  def create
  end

  def index
  end

  def edit
  end

  def update
  end

  def destroy
  end





  # private def result_params
  #   params.require(:result).permit(:name, :chocolate, :puppies, :cash)
  # end

end
