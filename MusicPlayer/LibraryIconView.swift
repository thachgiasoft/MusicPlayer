//
//  LibraryIconView.swift
//  MusicPlayer
//
//  Created by Максим on 22.03.2020.
//  Copyright © 2020 Максим. All rights reserved.
//

import SwiftUI

struct LibraryIconView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Image(systemName: "circle.fill")
                    .resizable()
                    .foregroundColor(.red)
                Image(systemName: "photo")
                    .resizable()
                    .frame(width: geometry.size.width * 0.5, height: geometry.size.height * 0.5)
            }
        }
    }
}

struct LibraryIconView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryIconView()
    }
}
