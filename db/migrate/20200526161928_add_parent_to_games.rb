# frozen_string_literal: true

class AddParentToGames < ActiveRecord::Migration[5.2]
  def change
    add_reference :games, :parent
  end
end
