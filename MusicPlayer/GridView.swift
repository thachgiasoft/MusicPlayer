import SwiftUI

struct GridView<Content: View>: View {
    var rows: Int
    var columns: Int
    var content: (Int, Int) -> Content
    
    var body: some View {
        VStack {
            ForEach(0 ..< rows, id: \.self) { row in
                HStack {
                    ForEach(0 ..< self.columns, id: \.self) { column in
                        self.content(row, column)
                    }
                }
            }
        }
    }
    
    init(rows: Int, columns: Int, @ViewBuilder content: @escaping (Int, Int) -> Content) {
        self.rows = rows
        self.columns = columns
        self.content = content
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView(rows: 5, columns: 2) { row, column in
            AlbumCoverView()
        }
    }
}
