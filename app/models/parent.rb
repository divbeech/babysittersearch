class Parent < ApplicationRecord
    has_many :sitters, :through => :bookings
    has_many :bookings
end
