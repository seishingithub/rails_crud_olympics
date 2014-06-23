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

  scenario 'User can edit and update list of olympic sports' do
    visit '/'
    click_on 'Add olympic sport'
    fill_in 'Sport', with: 'soccer'
    fill_in 'Country', with: 'USA'
    click_on 'Create sport'
    expect(page).to have_content 'soccer'
    expect(page).to have_content 'USA'
    click_on 'soccer'
    expect(page).to have_content 'soccer'
    expect(page).to have_content 'USA'
    click_on 'Edit'
    fill_in 'Sport', with: 'tennis'
    fill_in 'Country', with: 'UK'
    click_on 'Update'
    expect(page).to have_content 'tennis'
    expect(page).to have_content 'UK'
  end

  scenario 'User can delete olympic sport from list' do
    visit '/'
    click_on 'Add olympic sport'
    fill_in 'Sport', with: 'soccer'
    fill_in 'Country', with: 'USA'
    click_on 'Create sport'
    expect(page).to have_content 'soccer'
    expect(page).to have_content 'USA'
    click_on 'soccer'
    expect(page).to have_content 'soccer'
    expect(page).to have_content 'USA'
    click_on 'Delete'
    expect(page).to have_no_content 'soccer'
    expect(page).to have_no_content 'USA'
  end
end