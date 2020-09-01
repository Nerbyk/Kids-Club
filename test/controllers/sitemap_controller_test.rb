require 'test_helper'

class SitemapControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get sitemap_show_url
    assert_response :success
  end

end
