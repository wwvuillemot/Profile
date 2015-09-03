class PagesController < ApplicationController

  def portfolio
    @carousels = {}

    @carousels['AmazonTote'] = []
    @carousels['AmazonTote'] << { index: 1, path: 'amazon_tote/amazon_tote_learn_more.png', title: 'Learn More', description: 'Quickly learn what the <b>AmazonTote</b> experience is all about.', active: true}
    @carousels['AmazonTote'] << { index: 2, path: 'amazon_tote/amazon_tote_from_product_page.png', title: 'Find An Item', description: 'For qualifying items in the Amazon catalog, you add it to your next AmazonTote delivery directly from the product page.' }
    @carousels['AmazonTote'] << { index: 3, path: 'amazon_tote/amazon_tote_order_page.png', title: 'Confirm Your Order', description: 'Once you decide you want an item, we have a single confirmation page before we add it to your next delivery.' }
    @carousels['AmazonTote'] << { index: 4, path: 'amazon_tote/amazon_tote_thank_you_page.png', title: 'Thank You Page', description: 'Once you confirmed your order, a simple thank you and ability to return to your shopping.' }
    @carousels['AmazonTote'] << { index: 5, path: 'amazon_tote/amazon_tote_order_page.png', title: 'Delivery Page', description: 'At-a-glance see what will be next delievered to your doorstep.' }
    @carousels['AmazonTote'] << { index: 6, path: 'amazon_tote/amazon_tote_account_page.png', title: 'Account Page', description: 'Manage all your upcoming and past deliveries, including cancellations and returns.' }
    @carousels['AmazonTote'] << { index: 7, path: 'amazon_tote/amazon_tote_returns_page.png', title: 'Returns Page', description: 'Hassle-free setup of a return: we come to you to pick-up and return, all for free.' }

    @carousels['SeattleAstro'] = []
    @carousels['SeattleAstro'] << { index: 1, path: 'seattle_astro/seattle_astro_home.png', title: 'Home', description: 'Quickly learn what the <b>SeattleAstro</b> upcoming events and announcements.', active: true}
    @carousels['SeattleAstro'] << { index: 2, path: 'seattle_astro/seattle_astro_welcome.png', title: 'Modern Design', description: 'We leverage best-in-class design language to build a compelling community identity.' }
    @carousels['SeattleAstro'] << { index: 3, path: 'seattle_astro/seattle_astro_membership.png', title: 'Online Membership', description: 'We ensure that our membership has frictionless access to their memebership, with the ability to join or renew online.' }
    @carousels['SeattleAstro'] << { index: 4, path: 'seattle_astro/seattle_astro_events.png', title: 'Events Page', description: 'All our events are consolidated in a single place along with easy ability to access via your favorite RSS reader.' }
    @carousels['SeattleAstro'] << { index: 5, path: 'seattle_astro/seattle_astro_event.png', title: 'Event Page', description: 'At-a-glance specifics about the event, including location.  If you express interest on an event page, you will notified by email anytime comments or announcements about the event are made online.' }
    @carousels['SeattleAstro'] << { index: 6, path: 'seattle_astro/seattle_astro_administration.png', title: 'Administration', description: 'The Board and website moderators have complete control over the content of the website.' }
  end
end
