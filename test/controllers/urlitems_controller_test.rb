require 'test_helper'

class UrlitemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @urlitem = urlitems(:one)
  end

  test "should get index" do
    get urlitems_url
    assert_response :success
  end

  test "should get new" do
    get new_urlitem_url
    assert_response :success
  end

  test "should create urlitem" do
    assert_difference('Urlitem.count') do
      post urlitems_url, params: { urlitem: { archive: @urlitem.archive, preserveDate: @urlitem.preserveDate, rawurl: @urlitem.rawurl, unread: @urlitem.unread, user_id: @urlitem.user_id } }
    end

    assert_redirected_to urlitem_url(Urlitem.last)
  end

  test "should show urlitem" do
    get urlitem_url(@urlitem)
    assert_response :success
  end

  test "should get edit" do
    get edit_urlitem_url(@urlitem)
    assert_response :success
  end

  test "should update urlitem" do
    patch urlitem_url(@urlitem), params: { urlitem: { archive: @urlitem.archive, preserveDate: @urlitem.preserveDate, rawurl: @urlitem.rawurl, unread: @urlitem.unread, user_id: @urlitem.user_id } }
    assert_redirected_to urlitem_url(@urlitem)
  end

  test "should destroy urlitem" do
    assert_difference('Urlitem.count', -1) do
      delete urlitem_url(@urlitem)
    end

    assert_redirected_to urlitems_url
  end
end
