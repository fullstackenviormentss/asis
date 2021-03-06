class InstagramAlbumDetector < AlbumDetector
  QUERY_FIELDS_THRESHOLD_HASH = { tags: 0.75, caption: 0.8 }
  FILTER_FIELDS = %w(username taken_at)

  def initialize(instagram_photo)
    instagram_photo.username.downcase!
    super(instagram_photo, QUERY_FIELDS_THRESHOLD_HASH, FILTER_FIELDS)
  end
end