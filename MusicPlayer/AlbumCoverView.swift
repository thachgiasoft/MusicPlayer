import SwiftUI

struct AlbumCoverView: View {
    
    let album = AlbumModel(artist: "Eminem", albumName: "Music To Be Murdered", albumCover: "Eminem")
    
    var body: some View {
            VStack {
                Image(self.album.albumCover).resizable()
                    .frame(width: 160, height: 160)
                    .cornerRadius(5)
                    .shadow(radius: 5)
                
                VStack(alignment: .leading) {
                    Text(self.album.albumName)
                            .font(.system(size: 15))
                            .frame(width: 160, alignment: .leading)
                            .lineLimit(1)
                    
                    Text(self.album.artist)
                            .font(.system(size: 15))
                            .foregroundColor(.secondary)
                            .frame(width: 160, alignment: .leading)
                }
            }
    }
}

struct AlbumCoverView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumCoverView()
    }
}
