class Video < ApplicationRecord
  has_many :rentals

  validates :title, presence: true
  validates :overview, presence: true
  validates :release_date, presence: true
  validates :total_inventory, presence: true
  validates :available_inventory, presence: true

  def decrement_available_inventory
    self.available_inventory -= 1
    self.save
  end

  def increment_available_inventory
    self.available_inventory += 1
    self.save
  end
end
