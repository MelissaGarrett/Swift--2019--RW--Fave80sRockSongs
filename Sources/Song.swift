import UIKit

public struct Song: Codable {
    let songTitle: String
    let artist: String
    let albumName: String
    
    public init(songTitle: String, artist: String, albumName: String) {
        self.songTitle = songTitle
        self.artist = artist
        self.albumName = albumName
    }
}
