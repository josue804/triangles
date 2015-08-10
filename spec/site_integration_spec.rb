require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('using the site', { :type => :feature }) do

  it('the user enters the values of the three triangle sides') do
    visit('/')
    fill_in("side_one",   :with => 10)
    fill_in("side_two",   :with => 10)
    fill_in("side_three", :with => 10)
    click_button('Submit')
    expect(page).to have_content('Equilateral')
  end
end
