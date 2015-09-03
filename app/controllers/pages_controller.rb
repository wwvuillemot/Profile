class PagesController < ApplicationController

  def portfolio
    @carousels = {}
    @carousels['AmazonTote']   = Slide.amazon_tote
    @carousels['SeattleAstro'] = Slide.seattle_astro
  end
end
