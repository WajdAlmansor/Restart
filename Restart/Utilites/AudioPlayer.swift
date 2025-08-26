import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

/* Plays a sound file from the app bundle.
- Parameters:
   - sound: The name of the audio file (without extension).
   - type: The file extension (e.g., "mp3", "wav").
 The function searches for the file in the app bundle,
 creates an AVAudioPlayer, and plays the sound.
 If the file cannot be found or played, it prints an error message.*/

func playSound (sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Could not play the sound file.")
        }
    }
}

