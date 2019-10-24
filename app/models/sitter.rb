class Sitter < ApplicationRecord
    has_many :parents, :through => :bookings
    has_many :bookings
    
end
