require 'spec_helper'

feature 'With sizing guides' do
  stub_authorization!

  context 'as a user, I can', pending: false do
    let(:sizing_guide) { create(:sizing_guide) }

    scenario 'view an existing sizing guide', js: false, wip: false do
      visit spree.sizing_guide_path(sizing_guide)
      expect(page).to have_content(sizing_guide.name)
    end
  end
end