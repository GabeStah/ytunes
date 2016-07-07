class Song < ActiveRecord::Base
  def youtube_test
    true
  end
  
  def youtube_url
    if youtube_id
      if youtube_start_time && youtube_start_time > 0
        "https://www.youtube.com/watch?v=#{youtube_id}&t=#{youtube_start_time}"
      else
        "https://www.youtube.com/watch?v=#{youtube_id}"
      end
    end
  end
end
