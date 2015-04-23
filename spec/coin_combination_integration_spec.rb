require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe("coin combination path", {:type => :feature}) do
  it("when user enters a dollar amount outputs the change") do
    visit('/')
    fill_in('dollar_amount', :with => '0.98')
    click_button('Send')
    expect(page).to have_content('3 quarters 2 dimes 3 pennies')
  end
end
