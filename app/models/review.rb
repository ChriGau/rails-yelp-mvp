class Review < ApplicationRecord
  belongs_to :restaurant
  # a review must have a content and a rating
    # rating should be a number between 0 and 5
  # !! un range se note entre ()
  validates :rating, presence: true, inclusion: { in: (0..5), allow_nil: false}
  validates :rating, numericality: {only_integer: true}
  validates :content, presence: true


end
