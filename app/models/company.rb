class Company < ApplicationRecord
    has_many :involved_companies
    has_many :games, through :involved_companies
end
