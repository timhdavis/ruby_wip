class MatchRequirementsController < ApplicationController
  before_action :set_match_requirement, only: [:show, :edit, :update, :destroy]

  # GET /match_requirements
  # GET /match_requirements.json
  def index
    @match_requirements = MatchRequirement.all
  end

  # GET /match_requirements/1
  # GET /match_requirements/1.json
  def show
  end

  # GET /match_requirements/new
  def new
    @match_requirement = MatchRequirement.new
  end

  # GET /match_requirements/1/edit
  def edit
  end

  # POST /match_requirements
  # POST /match_requirements.json
  def create
    @match_requirement = MatchRequirement.new(match_requirement_params)

    respond_to do |format|
      if @match_requirement.save
        format.html { redirect_to @match_requirement, notice: 'Match requirement was successfully created.' }
        format.json { render :show, status: :created, location: @match_requirement }
      else
        format.html { render :new }
        format.json { render json: @match_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /match_requirements/1
  # PATCH/PUT /match_requirements/1.json
  def update
    respond_to do |format|
      if @match_requirement.update(match_requirement_params)
        format.html { redirect_to @match_requirement, notice: 'Match requirement was successfully updated.' }
        format.json { render :show, status: :ok, location: @match_requirement }
      else
        format.html { render :edit }
        format.json { render json: @match_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /match_requirements/1
  # DELETE /match_requirements/1.json
  def destroy
    @match_requirement.destroy
    respond_to do |format|
      format.html { redirect_to match_requirements_url, notice: 'Match requirement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_match_requirement
      @match_requirement = MatchRequirement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def match_requirement_params
      params.require(:match_requirement).permit(:requirement_type, :requirement, :importance)
    end
end
