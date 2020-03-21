import SwiftUI

struct AlbumModel: Identifiable {
    var id = UUID()
    var artist: String
    var albumName: String
    var albumCover: String
    
    init(artist: String, albumName: String, albumCover: String) {
        self.artist = artist
        self.albumName = albumName
        self.albumCover = albumCover
    }
}
