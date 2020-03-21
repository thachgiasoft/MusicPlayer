import SwiftUI

struct ContentView: View {
    var body: some View {
            TabView {
                LibraryView()
                    .tabItem {
                        Image(systemName: "music.note.list")
                            .font(.system(size: 24, weight: Font.Weight.medium))
                        Text("Медиатека")
                    }
                
                RecommendationView()
                    .tabItem {
                        Image(systemName: "heart.fill")
                            .font(.system(size: 24, weight: Font.Weight.medium))
                        Text("Для вас")
                    }
                
                BrowseView()
                    .tabItem {
                        Image(systemName: "music.note")
                            .font(.system(size: 24, weight: Font.Weight.medium))
                        Text("Обзор")
                    }
                
                BrowseView()
                .tabItem {
                    Image(systemName: "dot.radiowaves.left.and.right")
                        .font(.system(size: 24, weight: Font.Weight.medium))
                    Text("Радио")
                }
                
                BrowseView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                        .font(.system(size: 24, weight: Font.Weight.medium))
                    Text("Поиск")
                }
            }
            .accentColor(Color.init(#colorLiteral(red: 1, green: 0.1764705882, blue: 0.3333333333, alpha: 1)))
            .edgesIgnoringSafeArea(.top)
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
