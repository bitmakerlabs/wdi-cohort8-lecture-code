class Reservation < ActiveRecord::Base
  belongs_to :restaurant

  validates :availability

  private
  def availability
    unless restaurant.available?(party_size, start_time)
      errors.add(:base, "Restaurant is full")
    end
  end
end
