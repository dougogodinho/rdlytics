require 'test_helper'

class ContactsControllerTest < ActionDispatch::IntegrationTest

  setup do
    @user = users(:one)
    @contact = contacts(:one)
  end

  test "should get index" do
    get user_contacts_url(@user), as: :json
    assert_response :success
  end

  test "should create contact" do
    assert_difference('Contact.count') do
      post user_contacts_url(@user), params: {contact: {email: @contact.email, user_id: @contact.user_id}}, as: :json
    end

    assert_response 201
  end

  test "should show contact" do
    get user_contact_url(@user, @contact), as: :json
    assert_response :success
  end

  # test "should update contact" do
  #   patch contact_url(@contact), params: { contact: { email: @contact.email, user_id: @contact.user_id } }, as: :json
  #   assert_response 200
  # end
  #
  # test "should destroy contact" do
  #   assert_difference('Contact.count', -1) do
  #     delete contact_url(@contact), as: :json
  #   end
  #
  #   assert_response 204
  # end
end
