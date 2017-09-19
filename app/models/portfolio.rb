class Portfolio < ApplicationRecord
  include Placeholder

  validates_presence_of :title, :body, :display_image, :thumb_image

  def self.javascript
    where(subtitle: 'Javascript')
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby Programming') }

  after_initialize :set_defaults

  def set_defaults
    self.display_image ||= Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image||= Placeholder.image_generator(height: '350', width: '200')
  end
end
