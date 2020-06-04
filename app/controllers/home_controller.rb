# frozen_string_literal: true

class HomeController < ApplicationController
  def index
	@projects = Project.where('team_id = ?', current_user.team_id)
	@teams = Team.where('id = ?', current_user.team_id)

  end
end
