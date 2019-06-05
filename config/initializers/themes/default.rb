::Spina::Theme.register do |theme|
  theme.name = 'default'
  theme.title = 'Default Theme'

  theme.page_parts = [
    { name: 'text', title: 'Text', partable_type: 'Spina::Text' },
    { name: 'accred_text', title: 'Accreditations Text', partable_type: 'Spina::Text' },
    { name: 'offer_text', title: 'Offer Text', partable_type: 'Spina::Text' },
    { name: 'joinus_text', title: 'Join Us Text', partable_type: 'Spina::Text' },
    { name: 'image', title: 'Image', partable_type: 'Spina::Image' },
    { name: 'image_collection', title: 'Image Collection', partable_type: 'Spina::ImageCollection' },
    { name: 'banner', title: 'Banner Image', partable_type: 'Spina::Image' },
    { name: 'joinus_banner', title: 'Join Us Banner Image', partable_type: 'Spina::Image' },
    { name: 'banner_title', title: 'Banner Title', partable_type: 'Spina::Text' },
    { name: 'testimonials', title: 'Testimonials', partable_type: 'Spina::Structure' },
    { name: 'patrons', title: 'Patrons', partable_type: 'Spina::Structure' }
  ]

  theme.view_templates = [{
    name: 'homepage',
    title: 'Homepage',
    page_parts: ['banner', 'banner_title', 'text', 'image_collection', 'accred_text', 'patrons', 'offer_text', 'joinus_text', 'joinus_banner']
  }, {
    name: 'show',
    title: 'Default',
    page_parts: ['banner_title', 'banner', 'text', 'image']
  }, {
    name: 'about',
    title: 'About',
    page_parts: ['banner', 'banner_title', 'text', 'testimonials']
  }, {
    name: 'services',
    title: 'Services',
    page_parts: ['banner', 'banner_title', 'text']
  }, {
    name: 'services_item',
    title: 'Services Item',
    page_parts: ['banner_title', 'banner', 'text', 'text2', 'text3', 'menus']
  }, {
    name: 'contact',
    title: 'Contact',
    page_parts: ['image', 'text']
  }]

  theme.custom_pages = [{
    name: 'homepage',
    title: 'Homepage',
    deletable: false,
    view_template: 'homepage'
  }]

  theme.navigations = [{
    name: 'main',
    label: 'Main navigation',
    auto_add_pages: true
  }, {
    name: 'footer_menu',
    label: 'Footer Menu',
    auto_add_pages: false
  }]

  theme.structures = [{
    name: 'testimonials',
    structure_parts: [{
      name:           'author',
      title:          'Author',
      partable_type:  'Spina::Line'
    }, {
      name:           'testimonial',
      title:          'Testimonial',
      partable_type:  'Spina::Text'
    }]
  },{
    name: 'patrons',
    structure_parts: [{
      name:           'name',
      title:          'Name',
      partable_type:  'Spina::Line'
    }, {
      name:           'quote',
      title:          'Quote',
      partable_type:  'Spina::Text'
    }, {
      name:           'picture',
      title:          'Picture',
      partable_type:  'Spina::Image'
    }]
  }]


end
