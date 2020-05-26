class Game < ApplicationRecord
    has_many :involved_companies
    has_many :companies, through :involved_companies
    has_and_belongs_to_many :platforms
    has_and_belongs_to_many :genres
end
