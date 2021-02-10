class Game < ApplicationRecord
    validates :home_team, :presence => true
    validates :away_team, :presence => true
    validates :rate_team, :presence => true
    
    has_many :rates
    belongs_to :user, optional: true
    
    accepts_nested_attributes_for :rates, allow_destroy: true
end
