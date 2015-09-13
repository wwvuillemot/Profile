class Company

  def self.create(attributes)
    carousel = self.new
    carousel.set_attributes(attributes)
    return carousel
  end

  def self.find(slug)
    self.find_all.each do |candidate|
      return candidate if candidate.slug == slug
    end
    return nil
  end

  def self.find_all
    companies = []
    companies << self.create({ slug: :shs, title: 'Reimagining Home Services', short: 'SHS', tags: ['director of engineering']})
    companies << self.create({ slug: :azure, title: 'Games as a Service', short: 'Azure', tags: ['senior product manager'] })
    companies << self.create({ slug: :xbox, title: 'Personalizing Discovery', short: 'Xbox', tags: ['senior program manager'] })
    companies << self.create({ slug: :amazon, title: 'Food &amp; Totes', short: 'Amazon', tags: ['technical program manager', 'senior software engineer'] })
    companies << self.create({ slug: :boeing, title: 'Planes Over Databases', short: 'Boeing', tags: ['lead software engineer', 'architect'] })
    companies << self.create({ slug: :seattle_astro, title: 'Reimagining Home Services', short: 'SeattleAstro', tags: ['webmaster', 'board member', 'volunteer'] })
  end

  attr_accessor :slug
  attr_accessor :title
  attr_accessor :short
  attr_accessor :tags

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

  def slides
    begin
      Slide.send(slug)
    rescue NoMethodError => e
      nil
    end
  end

  def set_attributes(attributes)
    attributes.each do |attribute, value|
      send("#{attribute}=", value)
    end
  end
end
