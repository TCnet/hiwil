require 'test_helper'

class AlbumsHelperTest < ActionView::TestCase
  def setup
    
    @album = albums(:album1)
    
  end
  
  test "code for photos" do
    code = %w{be}
    assert_equal code_for(@album.photos,"123456789$$"), code
        
  end
end
