
Given(/^I am editing page that does not exist$/) do
  step 'I am at page that does not exist'
  step 'I click link Create source'
end

When(/^I type (.+)$/) do |write_text|
  on(EditPage).article_text=write_text
end

When(/^I click Preview$/) do
  on(EditPage).preview
end

Then(/^the page should contain an img tag$/) do
  on(EditPage).math_image_element.should exist
end

Then(/^alt for that img should be (.+)$/) do |alt|
  on(EditPage).math_image_element.element.alt.should == alt
end

Then(/^src for that img should come from (.+)$/) do |src|
  on(EditPage).math_image_element.element.src.should match Regexp.escape(src)
end
