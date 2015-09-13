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
    companies << self.create({ slug: :shs, title: 'Reimagining Home Services', short: 'SHS' })
    companies << self.create({ slug: :azure, title: 'Games as a Service', short: 'Azure' })
    companies << self.create({ slug: :xbox, title: 'Personalizing Discovery', short: 'Xbox' })
    companies << self.create({ slug: :amazon, title: 'Food &amp; Totes', short: 'Amazon' })
    companies << self.create({ slug: :boeing, title: 'Planes Over Databases', short: 'Boeing' })
    companies << self.create({ slug: :seattle_astro, title: 'Reimagining Home Services', short: 'SeattleAstro' })
  end

  attr_accessor :slug
  attr_accessor :title
  attr_accessor :short

  def to_lead_path
    "pages/lead/#{slug}"
  end

  def to_partial_path
    "pages/portfilio/#{slug}"
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
