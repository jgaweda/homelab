from pymediainfo import MediaInfo

# Tracks can be accessed via the 'tracks' attribute or through shortcuts
# such as 'image_tracks', 'audio_tracks', 'video_tracks', etc.

media_info = MediaInfo.parse("/mnt/user/mediadata/media/photos/my_image.jpg")
general_track = media_info.general_tracks[0]
image_track = media_info.image_tracks[0]
print(
    f"{image_track.format} of {image_track.width}×{image_track.height} pixels"
    f" and {general_track.file_size} bytes."
)