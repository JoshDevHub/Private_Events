require "rails_helper"

RSpec.describe "Creating an Event", type: :system do
  before do
    login_as(create(:user))
  end

  scenario "valid inputs" do
    visit new_event_path

    fill_in "Name", with: "Event Title"
    fill_in "Location", with: "Event Location"
    fill_in "Description", with: "Event Description"

    select "2022", from: "event_date_1i"
    select "May", from: "event_date_2i"
    select "10", from: "event_date_3i"

    select "10 AM", from: "event_date_4i"
    select "00", from: "event_date_5i"

    click_on "Create Event"
    expect(page).to have_content("All Events")
  end

  scenario "invalid inputs" do
    visit new_event_path

    click_on "Create Event"
    expect(page).to have_content("Name can't be blank")
  end
end
