require 'rails_helper'

feature 'pickup list' do
  scenario 'user can see restaurants that are giving away food', js: true do
    givenImOnTheRestaurantListPage
    thenISeeThePageHeader
    thenISeeTheTableHeaders
    thenISeeRestaurants
  end


  def givenImOnTheRestaurantListPage
    visit '/'
  end

  def thenISeeThePageHeader
    expect(page).to have_text('Find restaurants that are giving away food')
  end

  def thenISeeTheTableHeaders
    expect(page).to have_text('Restaurant Name')
    expect(page).to have_text('Address')
    expect(page).to have_text('Phone Number')
  end

  def thenISeeRestaurants
    expect(page).to have_text('Test Restaurant')
    expect(page).to have_text('Blvd of Broken Creams')
    expect(page).to have_text('555-555-5555')
  end

end