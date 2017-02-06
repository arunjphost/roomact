require 'test_helper'

class RoomActsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @room_act = room_acts(:one)
  end

  test "should get index" do
    get room_acts_url
    assert_response :success
  end

  test "should get new" do
    get new_room_act_url
    assert_response :success
  end

  test "should create room_act" do
    assert_difference('RoomAct.count') do
      post room_acts_url, params: { room_act: { Amount: @room_act.Amount, Desc: @room_act.Desc, Name: @room_act.Name, Time: @room_act.Time } }
    end

    assert_redirected_to room_act_url(RoomAct.last)
  end

  test "should show room_act" do
    get room_act_url(@room_act)
    assert_response :success
  end

  test "should get edit" do
    get edit_room_act_url(@room_act)
    assert_response :success
  end

  test "should update room_act" do
    patch room_act_url(@room_act), params: { room_act: { Amount: @room_act.Amount, Desc: @room_act.Desc, Name: @room_act.Name, Time: @room_act.Time } }
    assert_redirected_to room_act_url(@room_act)
  end

  test "should destroy room_act" do
    assert_difference('RoomAct.count', -1) do
      delete room_act_url(@room_act)
    end

    assert_redirected_to room_acts_url
  end
end
