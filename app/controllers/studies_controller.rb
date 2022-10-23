class StudiesController < ApplicationController
  
  def new
    @study = Study.new
  end

  def create
    @study = Study.create(study_params)
    if @study.save
      redirect_to new_study_path
    else
      render :new
    end
  end

end

private

def study_params
  params.require(:study).permit(:date, :activity, :study, :manager, :text)
end
