//
//  PokedexView.swift
//  Pokedex
//
//  Created by Farrel Anshary on 04/07/21.
//

import SwiftUI

struct PokedexView: View {
    
    private let gridItems = [GridItem(.flexible()), GridItem(.flexible())]
    @ObservedObject var viewModel = PokemonViewModel()
    
    var body: some View {
        NavigationView {
            if viewModel.pokemon.isEmpty {
                VStack {
                    ActivityIndicator(shouldAnimate: true)
                }
                .navigationTitle("Pokedex")
            }
            else {
                ScrollView {
                    LazyVGrid(columns: gridItems, spacing: 20) {
                        ForEach(viewModel.pokemon) { pokemon in
                            NavigationLink(
                                destination: DetailView(pokemon: pokemon, viewModel: viewModel),
                                label: {
                                    PokemonCell(pokemon: pokemon, viewModel: viewModel)
                                })
                        }
                    }
                }.navigationTitle("Pokedex")
            }
            
        }
    }
}

struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
}
