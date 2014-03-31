require 'spec_helper'
require 'capybara/rspec'
require_relative '../app'
Capybara.app = App

feature 'Adding a product' do
  scenario 'Adding a product to the homepage' do
    visit '/'
    expect(page).to have_content('Welcome')
    click_link 'Add a Product'
    fill_in('product', :with => 'Cheeseburger')
    click_on 'Create Product'
    expect(page).to have_content('Cheeseburger')
  end
end