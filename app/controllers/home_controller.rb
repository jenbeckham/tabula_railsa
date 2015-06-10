class HomeController < ApplicationController

  def form
    if request.post?
      @result = Result.create!(name: params[:name], chocolate: params[:chocolate], rainbows: params[:rainbows], cold_hard_cash: params[:cash])
    end
  end

  # private def result_params
  #   params.require(:result).permit(:name, :chocolate, :puppies, :cash)
  # end

end
