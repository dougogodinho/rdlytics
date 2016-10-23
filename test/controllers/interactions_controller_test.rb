require 'test_helper'

class InteractionsControllerTest < ActionDispatch::IntegrationTest

  setup do
    @user = users(:one)
    @interaction = interactions(:one)
  end

  test "should get index" do
    get user_interactions_url(@user), as: :json
    assert_response :success
  end

  test "should create interaction" do
    assert_difference('Interaction.count') do
      post user_interactions_url(@user), params: {interaction: {location: @interaction.location}}, as: :json
    end

    assert_response 201
  end

  test "should show interaction" do
    get user_interaction_url(@user, @interaction), as: :json
    assert_response :success
  end

  # test "should update interaction" do
  #   patch user_interaction_url(@interaction), params: { interaction: { integer: @interaction.integer, string: @interaction.string } }, as: :json
  #   assert_response 200
  # end
  #
  # test "should destroy interaction" do
  #   assert_difference('Interaction.count', -1) do
  #     delete user_interaction_url(@interaction), as: :json
  #   end
  #
  #   assert_response 204
  # end
end
