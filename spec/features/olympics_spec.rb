require 'spec_helper'

feature 'Manage Olympics' do
  scenario 'User can create and view list of olympic sports' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add olympic sport'
    fill_in 'Sport', with: 'soccer'
    fill_in 'Country', with: 'USA'
    click_on 'Create sport'
    expect(page).to have_content 'soccer'
    expect(page).to have_content 'USA'
  end
end