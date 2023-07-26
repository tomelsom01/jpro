console.log("hello from vid");



  document.addEventListener('DOMContentLoaded', function() {
    const playButtons = document.querySelectorAll('.playButton');
    const videoPlayers = document.querySelectorAll('.videoPlayer');

    playButtons.forEach(function(button) {
      button.addEventListener('click', function() {
        // Get the video index from the data attribute
        console.log("you clicked the button!");
        const videoIndex = this.getAttribute('data-video-index');

        // Display the corresponding video player by setting the style to "display: block"
        videoPlayers[videoIndex].style.display = 'block';

        // Play the corresponding video
        videoPlayers[videoIndex].play();

        // Pause and hide the other videos
        for (let i = 0; i < videoPlayers.length; i++) {
          if (i !== parseInt(videoIndex, 10)) {
            videoPlayers[i].pause();
            videoPlayers[i].style.display = 'none';
          }
        }
      });
    });
  });
