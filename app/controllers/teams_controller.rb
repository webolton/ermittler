# frozen_string_literal: true

class TeamsController < ApplicationController
  before_action :set_team, only: %i[show edit update destroy]

  # GET /teams or /teams.json
  def index
    @teams = Team.all
  end

  # GET /teams/1 or /teams/1.json
  def show; end

  # GET /teams/new
  def new
    @team = Team.new
  end

  # GET /teams/1/edit
  def edit; end

  # POST /teams or /teams.json
  def create
    @team = Team.new(team_params)

    if @team.save
      # redirect_to root_path, notice: 'Team was successfully created.'
      flash.now[:notice] = 'Team successfully created'
      render turbo_stream: [
        turbo_stream.update('new_team_modal', partial: 'new_team_frame'),
        turbo_stream.update('notices', partial: 'shared/notices')
    ]
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /teams/1 or /teams/1.json
  def update
    respond_to do |format|
      if @team.update(team_params)
        format.html { redirect_to @team, notice: 'Team was successfully updated.', status: :see_other }
        format.json { render :show, status: :ok, location: @team }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teams/1 or /teams/1.json
  def destroy
    @team.destroy!

    respond_to do |format|
      format.html { redirect_to teams_path, notice: 'Team was successfully destroyed.', status: :see_other }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_team
    @team = Team.find(params.expect(:id))
  end

  # Only allow a list of trusted parameters through.
  def team_params
    params.expect(team: %i[email name])
  end
end
