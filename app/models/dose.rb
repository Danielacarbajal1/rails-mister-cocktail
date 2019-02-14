class Dose < ApplicationRecord
  validates :description, presence: true
  belongs_to :ingredient
  belongs_to :cocktail, dependent: :destroy
  validates_uniqueness_of :cocktail, scope: :ingredient
end
