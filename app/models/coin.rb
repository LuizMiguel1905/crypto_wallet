class Coin < ApplicationRecord
  belongs_to :mining_type
  has_one_attached :url_image
end
