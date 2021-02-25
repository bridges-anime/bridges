const video = document.querySelector('video');

// we're using the demo stream from star trek for now, until episodes are properly implemented
const source = '//storage.googleapis.com/shaka-demo-assets/angel-one/dash.mpd';

// For options (second argument) see: https://github.com/sampotts/plyr/#options
const player = new Plyr(video);

// For more Shaka Player options, see: https://github.com/google/shaka-player
if (shaka.Player.isBrowserSupported()) {
  // Install built-in polyfills
  shaka.polyfill.installAll();

  const shakaInstance = new shaka.Player(video);

  shakaInstance.load(source);
} else {
  console.warn('Browser is not supported!');
}