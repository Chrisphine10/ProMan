# frozen_string_literal: true

class HomeController < ApplicationController
  def index
	if current_user.present?
	@projects = Project.where('team_id = ?', current_user.team_id)
	@teams = Team.where('id = ?', current_user.team_id)
	end
  end
end
