# frozen_string_literal: true

class AddUniqueIndex < ActiveRecord::Migration[5.2]
  def change
    add_index :doses, %i[ingredient_id cocktail_id], unique: true
  end
end
