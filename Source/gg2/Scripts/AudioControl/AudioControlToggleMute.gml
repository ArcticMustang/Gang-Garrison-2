// toggles the global mute on or off

if(AudioControl.allAudioMuted) {
    AudioControl.allAudioMuted = false;
    faudio_set_global_volume(global.globalVolume/100);
} else {
    AudioControl.allAudioMuted = true;
    faudio_set_global_volume(0);
}
