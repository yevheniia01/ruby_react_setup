require "test_helper"

class Entry2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entry2 = entry2s(:one)
  end

  test "should get index" do
    get entry2s_url
    assert_response :success
  end

  test "should get new" do
    get new_entry2_url
    assert_response :success
  end

  test "should create entry2" do
    assert_difference('Entry2.count') do
      post entry2s_url, params: { entry2: { calories: @entry2.calories, carbs: @entry2.carbs, fats: @entry2.fats, meal_type: @entry2.meal_type, proteins: @entry2.proteins } }
    end

    assert_redirected_to entry2_url(Entry2.last)
  end

  test "should show entry2" do
    get entry2_url(@entry2)
    assert_response :success
  end

  test "should get edit" do
    get edit_entry2_url(@entry2)
    assert_response :success
  end

  test "should update entry2" do
    patch entry2_url(@entry2), params: { entry2: { calories: @entry2.calories, carbs: @entry2.carbs, fats: @entry2.fats, meal_type: @entry2.meal_type, proteins: @entry2.proteins } }
    assert_redirected_to entry2_url(@entry2)
  end

  test "should destroy entry2" do
    assert_difference('Entry2.count', -1) do
      delete entry2_url(@entry2)
    end

    assert_redirected_to entry2s_url
  end
end
