//
// FavoritesView.swift : Favorites
//
// Copyright © 2025 Auburn University.
// All Rights Reserved.


import SwiftUI

struct FavoritesView: View {
    
    @EnvironmentObject var favorites: FavoritesViewModel
    
    var body: some View {
        ScrollView {
            LazyVStack {
                VStack {
                    ForEach(favorites.favoriteCities()) { city in
                        CityCardView(city: city)
                    }
                }
                VStack {
                    ForEach(favorites.favoriteHobbies()) { hobby in
                        HobbyRowView(hobby: hobby)
                    }
                }
                VStack {
                    ForEach(favorites.favoriteBooks()) { book in
                        BookRowView(book: book)
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    FavoritesView()
        .environmentObject(FavoritesViewModel())
}
