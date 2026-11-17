require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  test "the library homepage loads" do
    get root_path

    assert_response :success
    assert_select "h1", text: "Student library"
  end
end
