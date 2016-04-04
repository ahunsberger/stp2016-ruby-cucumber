Given(/^I have entered a valid address$/) do
  visit 'http://www.dominos.com'
  find('.qa-Cl_order').click
end

When(/^I continue to delivery$/) do
  # order online, delivery, address, and continue
  find('.js-delivery').click
  find('#Street').send_keys '4404 Fairview Ridge Lane'
  find('#City').send_keys 'Apex'
  find('#Region').send_keys 'NC'
  find('#Postal_Code').send_keys '27539'
  find('.js-search-cta').click
end

Then(/^all entrees available for order$/) do
  expect(page).to have_css('.navigation-entrees') # Write code here that turns the phrase above into concrete actions
end
