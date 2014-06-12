class Review < ActiveRecord::Base
  validates :product, presence: true

  validates_presence_of :user
  belongs_to :product
  belongs_to :user


end
