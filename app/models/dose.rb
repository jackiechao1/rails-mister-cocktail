# frozen_string_literal: true

class Dose < ApplicationRecord
  validates :description, presence: true
  belongs_to :cocktail
  belongs_to :ingredient
  validates_uniqueness_of :cocktail_id, scope: :ingredient_id
end