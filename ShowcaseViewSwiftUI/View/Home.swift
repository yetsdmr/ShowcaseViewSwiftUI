//
//  Home.swift
//  ShowcaseViewSwiftUI
//
//  Created by Yunus Emre Taşdemir on 26.06.2023.
//

import SwiftUI
import MapKit

struct Home: View {
    // Apple Park Region
    @State private var region = MKCoordinateRegion(
    center: CLLocationCoordinate2D(latitude: 37.3346, longitude: -122.0090), latitudinalMeters: 1000, longitudinalMeters: 1000
    )
    var body: some View {
        // Sample View
        TabView {
            GeometryReader {
                let safeArea = $0.safeAreaInsets
                
                Map(coordinateRegion: $region)
                    // Top Safe Area Material View
                    .overlay(alignment: .top, content: {
                        Rectangle()
                            .fill(.ultraThinMaterial)
                            .frame(height: safeArea.top)
                    })
                    .ignoresSafeArea()
                    .overlay(alignment: .topTrailing) {
                        // Sample Buttons
                        VStack {
                            Button {
                                
                            } label: {
                                Image(systemName: "location.fill")
                                    .foregroundColor(.white)
                                    .padding(10)
                                    .background {
                                        RoundedRectangle(cornerRadius: 10, style:
                                        .continuous)
                                        .fill(.black)
                                    }
                            }
                            
                            Spacer (minLength: 0)
                            
                            Button {
                                
                            } label: {
                                Image(systemName: "suit.heart.fill")
                                    .foregroundColor(.white)
                                    .padding(10)
                                    .background {
                                        RoundedRectangle(cornerRadius: 10, style:
                                        .continuous)
                                        .fill(.red)
                                    }
                            }

                        }
                        .padding (15)
                    }
            }
            .tabItem {
                Image(systemName: "macbook.and.iphone")
                Text ("Devices")
            }
            .toolbarBackground(.visible, for: .tabBar)
            .toolbarBackground(.ultraThinMaterial, for: .tabBar)
            
            Text ("")
                .tabItem {
                    Image(systemName: "square.grid.2x2.fill")
                    Text("Items")
                }
            
           
            Text ("")
                .tabItem {
                    Image(systemName: "person.circle.fill")
                    Text("Me")
                }
        }

    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
