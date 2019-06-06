::Spina::Theme.register do |theme|
  theme.name = 'default'
  theme.title = 'Default Theme'

  theme.page_parts = [
    { name: 'text', title: 'Text', partable_type: 'Spina::Text' },
    { name: 'accred_text', title: 'Accreditations Text', partable_type: 'Spina::Text' },
    { name: 'offer_text', title: 'Offer Text', partable_type: 'Spina::Text' },
    { name: 'image', title: 'Image', partable_type: 'Spina::Image' },
    { name: 'image_collection', title: 'Image Collection', partable_type: 'Spina::ImageCollection' },
    { name: 'banner', title: 'Banner Image', partable_type: 'Spina::Image' },
    { name: 'banner_title', title: 'Banner Title', partable_type: 'Spina::Text' },
    { name: 'banner_text', title: 'Banner Text', partable_type: 'Spina::Text' },
    { name: 'banner2', title: 'Banner 2 Image', partable_type: 'Spina::Image' },
    { name: 'banner2_title', title: 'Banner 2 Title', partable_type: 'Spina::Text' },
    { name: 'openday_banner', title: 'Open Day Image', partable_type: 'Spina::Image' },
    { name: 'openday_text', title: 'Open Day Text', partable_type: 'Spina::Text' },
    { name: 'joinus_banner', title: 'Join Us Banner Image', partable_type: 'Spina::Image' },
    { name: 'joinus_text', title: 'Join Us Text', partable_type: 'Spina::Text' },
    { name: 'testimonials', title: 'Testimonials', partable_type: 'Spina::Structure' },
    { name: 'course_detail', title: 'Course Details', partable_type: 'Spina::Structure' },
    { name: 'entry_text', title: 'Entry Requirements Text', partable_type: 'Spina::Text' },
    { name: 'fees_text', title: 'Course Fees Text', partable_type: 'Spina::Text' },
    { name: 'scholarship_text', title: 'Scholarship Text', partable_type: 'Spina::Text' },
    { name: 'patrons', title: 'Patrons', partable_type: 'Spina::Structure' },
    { name: 'facilities', title: 'Facilities', partable_type: 'Spina::Structure' }
  ]

  theme.view_templates = [{
    name: 'homepage',
    title: 'Homepage',
    page_parts: ['banner', 'banner_title', 'text', 'image_collection', 'accred_text', 'patrons', 'offer_text', 'joinus_text', 'joinus_banner']
  }, {
    name: 'show',
    title: 'Default',
    page_parts: ['text', 'image']
  }, {
    name: 'about',
    title: 'About',
    page_parts: ['banner', 'banner_title', 'text', 'testimonials']
  }, {
    name: 'academy',
    title: 'Academy',
    page_parts: ['banner', 'banner_title', 'banner_text', 'banner2', 'banner2_title', 'text', 'facilities', 'testimonials', 'openday_text', 'openday_banner', 'joinus_text', 'joinus_banner']
  }, {
    name: 'theatreschool',
    title: 'Theatre School',
    page_parts: ['banner', 'banner_title', 'banner_text', 'banner2', 'banner2_title', 'text', 'facilities', 'testimonials', 'openday_text', 'openday_banner', 'joinus_text', 'joinus_banner']
  }, {
    name: 'course',
    title: 'Course',
    page_parts: ['banner', 'banner_title', 'banner_text', 'text', 'course_detail', 'testimonials', 'entry_text', 'fees_text', 'scholarship_text', 'joinus_text', 'joinus_banner']
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
      name:           'location',
      title:          'Location',
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
  },{
    name: 'facilities',
    structure_parts: [{
      name:           'title',
      title:          'Title',
      partable_type:  'Spina::Line'
    }, {
      name:           'text',
      title:          'Text',
      partable_type:  'Spina::Text'
    }, {
      name:           'picture',
      title:          'Picture',
      partable_type:  'Spina::Image'
    }]
  },{
    name: 'course_detail',
    structure_parts: [{
      name:           'title',
      title:          'Title',
      partable_type:  'Spina::Line'
    }, {
      name:           'text',
      title:          'Text',
      partable_type:  'Spina::Text'
    }, {
      name:           'picture',
      title:          'Picture',
      partable_type:  'Spina::Image'
    }]
  }]


end
