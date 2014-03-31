require 'spec_helper'
require 'capybara/rspec'
require_relative '../app'
Capybara.app = App

feature 'Adding a product' do
  scenario 'Viewing the homepage' do
    visit '/'
    expect(page).to have_content('Welcome')
  end
end