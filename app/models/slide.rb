class Slide

  def self.create(attributes)
    carousel = Slide.new
    carousel.set_attributes(attributes)
    return carousel
  end

  def self.seattle_astro
    slide = []
    slide << Slide.create({ order: 1, path: 'seattle_astro/seattle_astro_home.png', title: 'Home', description: 'Quickly learn what the <b>SeattleAstro</b> upcoming events and announcements.', active: true})
    slide << Slide.create({ order: 2, path: 'seattle_astro/seattle_astro_responsive_design.png', title: 'Responsive Design', description: 'The site is entirely responsive for desktop, tablet and smart phone.' })
    slide << Slide.create({ order: 3, path: 'seattle_astro/seattle_astro_welcome.png', title: 'Modern Design', description: 'We leverage best-in-class design language to build a compelling community identity.' })
    slide << Slide.create({ order: 4, path: 'seattle_astro/seattle_astro_membership.png', title: 'Online Membership', description: 'We ensure that our membership has frictionless access to their memebership, with the ability to join or renew online.' })
    slide << Slide.create({ order: 5, path: 'seattle_astro/seattle_astro_events.png', title: 'Events Page', description: 'All our events are consolidated in a single place along with easy ability to access via your favorite RSS reader.' })
    slide << Slide.create({ order: 6, path: 'seattle_astro/seattle_astro_event.png', title: 'Event Page', description: 'At-a-glance specifics about the event, including location.  If you express interest on an event page, you will notified by email anytime comments or announcements about the event are made online.' })
    slide << Slide.create({ order: 7, path: 'seattle_astro/seattle_astro_administration.png', title: 'Administration', description: 'The Board and website moderators have complete control over the content of the website.' })
    return slide
  end

  def self.amazon_tote
    slide = []
    slide << Slide.create({ order: 1, path: 'amazon_tote/amazon_tote_learn_more.png', title: 'Learn More', description: 'Quickly learn what the <b>AmazonTote</b> experience is all about.', active: true})
    slide << Slide.create({ order: 2, path: 'amazon_tote/amazon_tote_from_product_page.png', title: 'Find An Item', description: 'For qualifying items in the Amazon catalog, you add it to your next AmazonTote delivery directly from the product page.' })
    slide << Slide.create({ order: 3, path: 'amazon_tote/amazon_tote_order_page.png', title: 'Confirm Your Order', description: 'Once you decide you want an item, we have a single confirmation page before we add it to your next delivery.' })
    slide << Slide.create({ order: 4, path: 'amazon_tote/amazon_tote_thank_you_page.png', title: 'Thank You Page', description: 'Once you confirmed your order, a simple thank you and ability to return to your shopping.' })
    slide << Slide.create({ order: 5, path: 'amazon_tote/amazon_tote_order_page.png', title: 'Delivery Page', description: 'At-a-glance see what will be next delievered to your doorstep.' })
    slide << Slide.create({ order: 6, path: 'amazon_tote/amazon_tote_account_page.png', title: 'Account Page', description: 'Manage all your upcoming and past deliveries, including cancellations and returns.' })
    slide << Slide.create({ order: 7, path: 'amazon_tote/amazon_tote_returns_page.png', title: 'Returns Page', description: 'Hassle-free setup of a return: we come to you to pick-up and return, all for free.' })
    return slide
  end

  attr_accessor :order
  attr_accessor :title
  attr_accessor :path
  attr_accessor :description
  attr_accessor :active

  def to_partial_path
    'slides/slide'
  end

  def set_attributes(attributes)
    attributes.each do |attribute, value|
      send("#{attribute}=", value)
    end
  end

end
