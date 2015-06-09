class HomeController < ApplicationController

  def form
    @result = Result.new(name: params[:name], chocolate: params[:chocolate], rainbows: params[:rainbows], cash: params[:cash])
  end

  def new

  end

end
