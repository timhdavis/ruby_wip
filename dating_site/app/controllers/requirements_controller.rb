class RequirementsController < ApplicationController
  def create
    @profile = Profile.find(params[:profile_id])

    if @profile.requirements.create(requirement_params)
      redirect_to @profile,
                  notice: 'requirement was successfully created.'
    else
      redirect_to @profile,
                  alert: 'Error creating requirement.'
    end
  end

  private
  def requirement_params
    params.require(:requirement).permit(:requirement_type, :requirement, :importance)
  end
end
