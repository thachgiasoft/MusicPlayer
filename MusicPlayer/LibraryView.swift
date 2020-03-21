import SwiftUI

struct LibraryView: View {
    @State private var listElement = ["Плейлисты", "Артисты", "Альбомы", "Песни", "Загруженная музыка"]
    @State private var isDisplay = false
    
    func move(from source: IndexSet, to destination: Int) {
        listElement.move(fromOffsets: source, toOffset: destination)
    }
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    List {
                        ForEach(0 ..< listElement.count) { element in
                            HStack {
                                if self.isDisplay {
                                    Image(systemName: "checkmark.circle.fill")
                                        .background(Color.green)
                                        .font(.system(size: 22))
                                        .foregroundColor(Color.init(#colorLiteral(red: 1, green: 0.1764705882, blue: 0.3333333333, alpha: 1)))
                                        .offset(x: -40)
                                }
                                NavigationLink(destination: Text("123")) {
                                    Text(self.listElement[element])
                                        .foregroundColor(Color.init(#colorLiteral(red: 1, green: 0.1764705882, blue: 0.3333333333, alpha: 1)))
                                        .font(.system(size: 22))
                                        .offset(x: self.isDisplay ? -30 : 0)
                                }
                                .padding(.top, 7)
                                .padding(.bottom, 7)
                            }
                        }
                            
                        .onMove(perform: move)
                    }
                        
                    .frame(height: 270)
                    
                    if !isDisplay {
                        Text("Недавно добавленные")
                            .font(.system(size: 22)).bold()
                            .padding(.top, 10)
                            .padding(.leading, 15)
                        
                        GridView(rows: 5, columns: 2) {_,_ in
                            NavigationLink(destination: Text("Album")) {
                                AlbumCoverView()
                                    .padding(.leading, 15)
                                    .padding(.bottom, 7)
                            }.buttonStyle(PlainButtonStyle())
                        }
                        Spacer()
                    }
                }
                .navigationBarItems(trailing:EditButton()
                .simultaneousGesture(TapGesture().onEnded {
                    withAnimation {
                        self.isDisplay.toggle()
                    }
                })
                    .accentColor(Color.init(#colorLiteral(red: 1, green: 0.1764705882, blue: 0.3333333333, alpha: 1))))
                    .navigationBarTitle("Медиатека")
            }
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
