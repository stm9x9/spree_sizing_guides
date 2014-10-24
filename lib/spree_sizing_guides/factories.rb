FactoryGirl.define do
  factory :sizing_guide, :class => Spree::SizingGuide do
    name 'A Sizing Guide'
    description 'A Sizing Guide Description'
    slug 'a-sizing-guide'
    sizing_guide_image { |a| a.association(:sizing_guide_image) }
  end

  factory :sizing_guide_image, class: Spree::SizingGuideImage do
    attachment Rack::Test::UploadedFile.new('spec/fixtures/thinking-cat.jpg', 'image/jpeg')
  end


end