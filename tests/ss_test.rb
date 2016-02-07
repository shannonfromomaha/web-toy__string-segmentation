require 'test_helper'

class SSTest < Minitest::Test
  # These lines of code should not be edited. They add necessary
  # functionality for running our "acceptance tests".
  def app
    MyApp
  end

   # The actual tests go below this comment.
  def test_urlline_1
    get '/catsbuttshamper'

    assert last_response.ok?

    assert_includes last_response.body, 'hamper'
  end

  def test_urlline2
    get '/dog'

    assert last_response.ok?

    assert_includes last_response.body, 'dog'
  end
end






