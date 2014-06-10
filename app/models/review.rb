class Review < ActiveRecord::Base
  validates :product, presence: true

  belongs_to :product

end
