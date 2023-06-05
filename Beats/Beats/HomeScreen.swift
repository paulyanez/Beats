//
//  HomeScreen.swift
//  Beats
//
//  Created by Paul Yanez on 6/5/23.
//

import SwiftUI

struct HomeScreen: View {
    private var gridLayout = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        VStack(spacing: 0) {
            VStack(spacing: -10.0) {
                HStack(spacing: 4.0) {
                    Text("Mon 25")
                        .foregroundColor(Color(hex: 0xFCFBD3))
                    
                    Image(systemName: "cloud.moon.rain.fill")
                        .foregroundColor(Color(hex: 0xFCFBD3))
                    
                    Text(" 24°")
                        .foregroundColor(Color(hex: 0xFCFBD3))
                }
                
                Text("12:27")
                    .font(Font.custom("NewYorkExtraLarge-Heavy", size: 80, relativeTo: .largeTitle))
                    .foregroundColor(Color(hex: 0xFCFBD3))
            }
            
            Spacer()
            
            VStack {
                Spacer()
                VStack(spacing: 2) {
                    
                    Text("On The Ground")
                        .font(.system(size: 15))
                        .foregroundColor(.white)
                    
                    Text("ROSE - R - Single")
                        .font(.system(size: 15))
                        .foregroundColor(Color(hex: 0xFCFBD3))
                    
                    HStack(alignment: .center, spacing: 12.0) {
                        Text("0:48")
                            .font(.caption)
                            .foregroundColor(Color(hex: 0xFCFBD3).opacity(0.7))
                        
                        ZStack(alignment: .leading) {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(height: 4)
                                .frame(maxWidth: .infinity)
                                .foregroundColor(.gray.opacity(0.5))
                            
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 100, height: 4)
                                .foregroundColor(.white)
                        }
                        
                        Text("-2:47")
                            .font(.caption)
                            .foregroundColor(Color(hex: 0xFCFBD3).opacity(0.7))
                    }
                    .padding(.top, 6)
                    
                    LazyVGrid(columns: gridLayout, spacing: 20)  {
                        Spacer()
                        
                        Image(systemName: "backward.fill")
                            .foregroundColor(Color.white)
                            .font(.system(size: 28))
                        
                        Image(systemName: "pause.fill")
                            .foregroundColor(Color.white)
                            .font(.system(size: 40))
                        
                        Image(systemName: "forward.fill")
                            .foregroundColor(Color.white)
                            .font(.system(size: 28))
                        
                        
                        
                        Image(systemName: "beats.headphones")
                            .foregroundColor(Color.white)
                            .font(.system(size: 24))
                            .padding(.trailing, 8)
                        
                    }
                    .padding(.top, 8)
                    .padding(.bottom, 20)
                    
                }
                .padding(.horizontal)
                .padding(.top, 16)
                .frame(width: UIScreen.main.bounds.width / 1.1)
                .background(Color(hex: 0x4B301C))
                .background(.thickMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
            }
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)
            .padding(.bottom, 40)
            
            Spacer()
            
            HStack(spacing: 50.0) {
                Button(action: {
                    // action to perform when button is tapped
                }) {
                    Image(systemName: "flashlight.off.fill")
                        .font(.title3)
                        .foregroundColor(.white)
                        .frame(width: 54, height: 54)
                        .background(Color(hex: 0x4B301C).opacity(0.8))
                        .clipShape(Circle())
                }
                
                HStack {
                    Circle()
                        .frame(width: 12, height: 12)
                        .foregroundColor(.white)
                    
                    Text("3 Notifications")
                        .font(.caption)
                        .fontWeight(.medium)
                        .foregroundColor(Color.white)
                }
                
                Button(action: {
                    // action to perform when button is tapped
                }) {
                    Image(systemName: "camera.fill")
                        .font(.title3)
                        .foregroundColor(.white)
                        .frame(width: 54, height: 54)
                        .background(Color(hex: 0x4B301C).opacity(0.8))
                        .clipShape(Circle())
                }
            }
        }
        .statusBarHidden(true)
        .padding(.top, 14)
        .background(
            Image("kylie")
                .resizable()
                .scaledToFill()
                .frame(height: UIScreen.main.bounds.height)
                .ignoresSafeArea()
        )
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
