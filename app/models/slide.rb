class Slide
  include Contentable

  attr_accessor :order
  attr_accessor :title
  attr_accessor :path
  attr_accessor :description
  attr_accessor :active

  def company
    Company.find(slug)
  end

  def to_partial_path
    'slides/slide'
  end

  def ==(another_slide)
    order == another_slide.order
    title == another_slide.title
    description == another_slide.description
    active == another_slide.active
  end
end
