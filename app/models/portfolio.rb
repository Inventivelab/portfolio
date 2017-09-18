class Portfolio < ApplicationRecord

  validates_presence_of :title, :body, :display_image, :thumb_image

  def self.javascript
    where(subtitle: 'Javascript')
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby Programming') }
end
