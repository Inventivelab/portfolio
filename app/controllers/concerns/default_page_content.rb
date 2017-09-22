module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_filter :set_page_default
  end

  def set_page_default
    @page_title = "Inventive Portfolio | My Portfolio Website"
    @seo_keywords = "Said Maadan Portfolio"
    @seo_description = "Austin based Web development agency"
  end
end
