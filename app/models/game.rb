class Game < ApplicationRecord
    has_many :rates
    belongs_to :user
    
    accepts_nested_attributes_for :rates, allow_destroy: true
end
