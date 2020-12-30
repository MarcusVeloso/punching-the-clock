require 'test_helper'

class WorkSchedulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @work_schedule = work_schedules(:one)
  end

  test "should get index" do
    get work_schedules_url
    assert_response :success
  end

  test "should get new" do
    get new_work_schedule_url
    assert_response :success
  end

  test "should create work_schedule" do
    assert_difference('WorkSchedule.count') do
      post work_schedules_url, params: { work_schedule: { day: @work_schedule.day, end_work: @work_schedule.end_work, start_work: @work_schedule.start_work, user_id: @work_schedule.user_id } }
    end

    assert_redirected_to work_schedule_url(WorkSchedule.last)
  end

  test "should show work_schedule" do
    get work_schedule_url(@work_schedule)
    assert_response :success
  end

  test "should get edit" do
    get edit_work_schedule_url(@work_schedule)
    assert_response :success
  end

  test "should update work_schedule" do
    patch work_schedule_url(@work_schedule), params: { work_schedule: { day: @work_schedule.day, end_work: @work_schedule.end_work, start_work: @work_schedule.start_work, user_id: @work_schedule.user_id } }
    assert_redirected_to work_schedule_url(@work_schedule)
  end

  test "should destroy work_schedule" do
    assert_difference('WorkSchedule.count', -1) do
      delete work_schedule_url(@work_schedule)
    end

    assert_redirected_to work_schedules_url
  end
end
