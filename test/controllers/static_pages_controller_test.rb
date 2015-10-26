require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    # 3.4.1-2 renamed ~/rails/blog/app/views/layouts/application.html.erb to ~/rails/blog/layout_file
    assert_select "title", "Ruby on Rails Tutorial Sample App"
  end

  test "should get help" do
    get :help
    assert_response :success
    # 3.4.1-2 renamed ~/rails/blog/app/views/layouts/application.html.erb to ~/rails/blog/layout_file
    assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
  end

  test "should get about" do
    get :about
    assert_response :success
    # 3.4.1-2 renamed ~/rails/blog/app/views/layouts/application.html.erb to ~/rails/blog/layout_file
    assert_select "title", "About | Ruby on Rails Tutorial Sample App"
  end
end
