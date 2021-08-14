# Building from the Ubuntu image
FROM ubuntu:18.04

# video=host/path/to/video.mp4 ; delcare it without quotes
ENV video=VIDEO.mp4

# You can verify the rtmp link on YouTube's Livestream dashboard ; declare it without quotes
ENV youtube_stream_url=rtmp://a.rtmp.youtube.com/live2

# You can get your stream key from YouTube's Livestream dashboard ; declare it without quotes
ENV stream_key=STREAM_KEY

# Updating in order to get the package cache; this allows the download of other packages
RUN apt-get update -y

# Installing ffmpeg
RUN apt-get install ffmpeg -y

# Making a video directory to keep things organized 
RUN mkdir /video_directory

# Copy the video to video_directory
COPY $video /video_directory/video.mp4

# Default command that always runs on startup
CMD ["/bin/sh", "-c", "ffmpeg -stream_loop -1 -re -i /video_directory/video.mp4 -vcodec libx264 -f flv -flvflags no_duration_filesize -force_key_frames 'expr:gte(t,n_forced*4)' -b:v 2500K -b:a 2500K ${youtube_stream_url}/${stream_key}"]
