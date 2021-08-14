# Docker-Youtube-Streamer
A barebones Docker image for streaming to YouTube.

<p align="center">
  <img src="https://github.com/MBarc/Docker-Youtube-Streamer/blob/main/YoutubeLogo.png" width="300" />
  <img src="https://github.com/MBarc/Docker-Youtube-Streamer/blob/main/dockerLogo.png" width="300" /> 
</p>

**Assumptions made in this guide: You have Docker downloaded and have a basic understanding of how to use it.**

-------------------------------------------------------------------------------------------------------
### Step 1.) Pull the image from Docker Hub or build the image from the Dockerfile I provided in this repository.

> docker pull mbarc98/docker_youtube_streamer
or
> docker build -t imagename path/to/Dockerfile

### Step 2.) Use docker run to create the container and have it start automatically.

> docker run -dt -e video=host/path/to/video.mp4 -e stream_key=YOUR_STREAM_KEY -e youtube_stream_url=YOUTUBE'S_RTMP_URL imagename

**Note: You don't have to specify youtube_stream_url since it's the same for everyone and I put the url in by default, I just provided that option in case they ever change their url.**

-------------------------------------------------------------------------------------------------------
