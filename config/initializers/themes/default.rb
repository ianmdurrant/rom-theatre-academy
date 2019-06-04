::Spina::Theme.register do |theme|
  theme.name = 'default'
  theme.title = 'Default Theme'

  theme.page_parts = [
    { name: 'text', title: 'Text', partable_type: 'Spina::Text' },
    { name: 'text2', title: 'Text 2', partable_type: 'Spina::Text' },
    { name: 'text3', title: 'Text 3', partable_type: 'Spina::Text' },
    { name: 'image', title: 'Image', partable_type: 'Spina::Image' },
    { name: 'image_collection', title: 'Image Collection', partable_type: 'Spina::ImageCollection' },
    { name: 'banner', title: 'Banner Image', partable_type: 'Spina::Image' },
    { name: 'banner_title', title: 'Banner Title', partable_type: 'Spina::Text' },
    { name: 'testimonials', title: 'Testimonials', partable_type: 'Spina::Structure' },
    { name: 'menus', title: 'Menus', partable_type: 'Spina::Structure' }
  ]

  theme.view_templates = [{
    name: 'homepage',
    title: 'Homepage',
    page_parts: ['banner', 'banner_title', 'text', 'image_collection']
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
    name: 'menus',
    structure_parts: [{
      name:           'title',
      title:          'Title',
      partable_type:  'Spina::Line'
    }, {
      name:           'items',
      title:          'Items',
      partable_type:  'Spina::Text'
    }, {
      name:           'price',
      title:          'Price',
      partable_type:  'Spina::Line'
    }]
  }]


end
