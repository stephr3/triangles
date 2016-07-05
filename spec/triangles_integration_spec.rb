require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('finding the triangle type',{:type => :feature}) do
  it('should take three lengths and return a type of triangle') do
    visit('/')
    fill_in('side_a', :with => '2')
    fill_in('side_b', :with => '2')
    fill_in('side_c', :with => '2')
    click_button('Submit')
    expect(page).to have_content("equilateral")
  end
end
