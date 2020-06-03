# frozen_string_literal: true

class AddTeamIdToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :team_id, :integer
  end
end
