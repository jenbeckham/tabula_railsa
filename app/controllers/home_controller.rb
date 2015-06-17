class HomeController < ApplicationController

  def new
    @result = Result.new
    unless Result.find_by_name(name: session[:name]) == @result.name
      redirect_to home_path, notice: "Only one submission at time"
    end
  end

  def create
    @survey = Survey.new(survey_params)

    respond_to do |format|
      if @survey.save
        format.html { redirect_to home_path(@result), notice: 'Survey was successfully created.' }
        format.json { render :show, status: :created, location: @result }
      else
        format.html { render :new }
        format.json { render json: @result.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @result = Result.find(params[:id])
  end



  private def result_params
    params.require(:result).permit(:name, :chocolate, :rainbow, :puppies, :cash)
  end


end
