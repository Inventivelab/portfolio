class Portfolio < ApplicationRecord

  validates_presence_of :title, :body, :display_image, :thumb_image
end
