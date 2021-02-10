class Rate < ApplicationRecord
    validates :name, :presence => true
    belongs_to :game, optional: true
end
