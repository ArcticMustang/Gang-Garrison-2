// toggles the global mute on or off

if(AudioControl.allAudioMuted) {
    AudioControl.allAudioMuted = false;
    faudio_set_global_volume(100);
    faudio_set_global_volume(global.dsmVolume/100)
} else {
    AudioControl.allAudioMuted = true;
    faudio_set_global_volume(0);
}
