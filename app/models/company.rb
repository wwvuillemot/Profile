class Company
  include Contentable

  attr_accessor :title
  attr_accessor :short
  attr_accessor :tags

  def slides
    return Slide.find(slug)
  end

  def to_lead_path
    "companies/leads/#{slug}"
  end

  def to_details_path
    "companies/details/#{slug}"
  end

  def to_partial_path
    "companies/company"
  end

  def headline
    "#{title} @ #{short}"
  end

  def ==(another_company)
    slug == another_company.slug
    short == another_company.short
    title == another_company.title
  end
end
