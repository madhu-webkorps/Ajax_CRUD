require 'test_helper'

class MadhugurjarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @madhugurjar = madhugurjars(:one)
  end

  test "should get index" do
    get madhugurjars_url
    assert_response :success
  end

  test "should get new" do
    get new_madhugurjar_url
    assert_response :success
  end

  test "should create madhugurjar" do
    assert_difference('Madhugurjar.count') do
      post madhugurjars_url, params: { madhugurjar: { email: @madhugurjar.email, name: @madhugurjar.name, phone: @madhugurjar.phone } }
    end

    assert_redirected_to madhugurjar_url(Madhugurjar.last)
  end

  test "should show madhugurjar" do
    get madhugurjar_url(@madhugurjar)
    assert_response :success
  end

  test "should get edit" do
    get edit_madhugurjar_url(@madhugurjar)
    assert_response :success
  end

  test "should update madhugurjar" do
    patch madhugurjar_url(@madhugurjar), params: { madhugurjar: { email: @madhugurjar.email, name: @madhugurjar.name, phone: @madhugurjar.phone } }
    assert_redirected_to madhugurjar_url(@madhugurjar)
  end

  test "should destroy madhugurjar" do
    assert_difference('Madhugurjar.count', -1) do
      delete madhugurjar_url(@madhugurjar)
    end

    assert_redirected_to madhugurjars_url
  end
end
