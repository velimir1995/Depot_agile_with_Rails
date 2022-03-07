require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "creating a User" do
    visit users_url
    click_on "New User"

    fill_in "Name", with: "Bobi"
    fill_in "Password", with: 'bobis_secret'
    fill_in "Confirm", with: 'bobis_secret'
    click_on "Create User"

    assert_text "User Bobi was successfully created."
    #click_on "Back"redirect radi umesto back
  end

  test "updating a User" do
    visit users_url
    click_on "Edit", match: :first

    fill_in "Name", with: "Pajko"
    fill_in "Password", with: 'secret'
    fill_in "Confirm", with: 'secret'
    click_on "Update User"

    assert_text "User Pajko was successfully updated"
    #click_on "Back"check for redirect
    #assert_redirected_to users_url
    #expect(page).to have_current_path(users_url)
    #expect(current_path).to eql(users_url)
  end

  test "destroying a User" do
    visit users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User was successfully destroyed."
  end
end
