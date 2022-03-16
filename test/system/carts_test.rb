require "application_system_test_case"

class CartsTest < ApplicationSystemTestCase
  setup do
    @cart = carts(:one)
  end

  test "visiting the index" do
    visit carts_url
    assert_selector "h1", text: "Carts"
  end

  test "creating a Cart" do
    visit carts_url
    click_on "New Cart"

    click_on "Create Cart"

    assert_text "Cart was successfully created"
    #click_on "Back"
  end

  test "updating a Cart" do
    visit carts_url
    click_on "Edit", match: :first

    click_on "Update Cart"

    assert_text "Cart was successfully updated"
    #click_on "Back"-maybe to change this to ckeck redirect
  end

  test "destroying a Cart" do
    visit carts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Your cart is currently empty"
  end

  test "displaying a Cart" do
    visit store_index_url
    click_on "Add to Cart", match: :first

    assert_selector ".actions"
  end

  test "not displaying a Cart" do
    visit store_index_url
    assert_selector '.actions', :count => 0
    click_on "Add to Cart", match: :first
    accept_confirm do
      click_on "Empty"
    end
    assert_selector '.actions', :count => 0
  end

  test "send invalid carts attempt email" do
    visit cart_url(id: "winnie pooh")
    mail = ActionMailer::Base.deliveries.last
    assert_equal ["vgvozdenac.vg@gmail.com"], mail.to
    assert_equal 'An error occurred', mail.subject
  end
end
