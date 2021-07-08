//
//  DetailView.swift
//  Pokedex
//
//  Created by Farrel Anshary on 04/07/21.
//

import SwiftUI
import Kingfisher

struct DetailView: View {
    let pokemon: Pokemon
    let viewModel: PokemonViewModel
    let color: Color
    
    init(pokemon: Pokemon, viewModel: PokemonViewModel) {
        UINavigationBarAppearance().configureWithTransparentBackground()
        
        self.pokemon = pokemon
        self.viewModel = viewModel
        self.color = Color(viewModel.backgroundColor(forType: pokemon.type))
    }
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(color)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text(pokemon.name.capitalized)
                    .font(.largeTitle)
                Text(pokemon.type.capitalized)
                    .font(.subheadline)
                    .foregroundColor(.white)
                    .padding(.horizontal, 18)
                    .padding(.vertical, 9)
                    .background(color)
                    .cornerRadius(20)
                
                Text(pokemon.description)
                    .padding(.vertical, 20)
                    .padding(.horizontal, 10)
                
                Text("Stats")
                    .font(.title2)
                    .padding(.horizontal, 10.0)
                
                HStack {
                    VStack {
                        Text("Weight")
                            .padding(5)
                        Text("Height")
                            .padding(5)
                        Text("Attack")
                            .padding(5)
                        Text("Defense")
                            .padding(5)
                    }
                    
                    VStack {
                        Text("\(pokemon.weight)")
                            .padding(5)
                        Text("\(pokemon.height)")
                            .padding(5)
                        Text("\(pokemon.attack)")
                            .padding(5)
                        Text("\(pokemon.defense)")
                            .padding(5)
                    }
                    
                    VStack {
                        ProgressBar(value: Float(pokemon.weight) / 1000)
                            .frame(width: 150, height: 20)
                            .padding(5)
                        ProgressBar(value: Float(pokemon.height) / 1000)
                            .frame(width: 150, height: 20)
                            .padding(5)
                        ProgressBar(value: Float(pokemon.attack) / 100)
                            .frame(width: 150, height: 20)
                            .padding(5)
                        ProgressBar(value: Float(pokemon.defense) / 100)
                            .frame(width: 150, height: 20)
                            .padding(5)
                    }
                }

            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .background(Color.white)
            .cornerRadius(16)
            .edgesIgnoringSafeArea(.bottom)
            .padding(.top, 100)
            
            VStack {
                KFImage(URL(string: pokemon.imageUrl))
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150, alignment: .top)
                Spacer()
            }
                
        }
    }
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView(pokemon: MOCK_POKEMON[1])
//    }
//}
