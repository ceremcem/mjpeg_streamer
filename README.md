# Update 

    ./update.sh # update if necessary 
    cd mjpg-streamer-code/mjpg-streamer
    patch -p0 < ../../input_uvc_patch
    

# Install MJPG STREAMER: 

    sudo apt-get install libjpeg62-turbo
    sudo apt-get install libv4l-dev    
    cd mjpg-streamer-code/mjpg-streamer
    make USE_LIBV4L2=true clean all

# Usage 

    ./start.sh
    # go to http://localhost:8080
