require 'rails_helper'
 
RSpec.describe "Exchange Currency Process", :type => :system, js: true do
  it "exchange value" do
    visit '/'
    within("#exchange_form") do
      select('EUR', from: 'source_currency')
      select('USD', from: 'target_currency')
      fill_in 'amount', with: rand(1..9999)
    end
 
    # save_and_open_page
    expect(page).to have_selector('#result')
  end
end