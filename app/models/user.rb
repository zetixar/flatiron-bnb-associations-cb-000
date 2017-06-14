class User < ActiveRecord::Base

  # my attempt:
  # has_many :listings, foreign_key: 'host_id'
  has_many :listings, foreign_key: 'host_id'

  # my attempt:
  # has_many :reservations, foreign_key: 'guest_id'
  # I should practice on some similar project and make similar field
  # to 'trips'.
  has_many :trips, class_name: 'Reservation', foreign_key: 'guest_id'

  has_many :reservations, through: :listings
  has_many :reviews, foreign_key: 'guest_id'
end
