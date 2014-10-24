require 'spec_helper'

feature 'With sizing guides' do
  stub_authorization!

  context 'as an admin with valid credentials, I can', admin: true, pending: false do
    let!(:sizing_guide) {create(:sizing_guide)}

    scenario 'edit an existing sizing guide', js: false, wip: false do
      visit spree.edit_admin_sizing_guide_path sizing_guide
      expect(page).to have_content('Editing Sizing Guide')
    end

    scenario 'create a new sizing guide', js: false, wip: false do
      visit '/admin'
      click_link 'Configuration'
      click_link 'Sizing Guides'
      click_link 'New Sizing Guide'
      fill_in 'Name', with: 'Test Sizing Guide'
      fill_in 'Description', with: 'Test Description'
      fill_in 'Slug', with: 'test-sizing-guide'
      attach_file 'Image', File.expand_path('spec/fixtures/thinking-cat.jpg')
      click_button 'Create'
    end
  end
end