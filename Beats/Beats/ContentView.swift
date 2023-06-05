//
//  ContentView.swift
//  Beats
//
//  Created by Paul Yanez on 6/5/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("Darkgray"), .black]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()

            VStack(spacing: 20.0) {
                VStack {
                    ZStack {
                        Image("beats-logo2")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 500)
                            .opacity(0.03)
                            .offset(x: -80, y: 10)
                        
                        Image("beats")
                            .resizable()
                            .scaledToFit()
                            .frame(width: UIScreen.main.bounds.width)
                            .scaleEffect(x: 1.4, y: 1.4)
                            .contrast(1.21)
                            .shadow(color: .black.opacity(0.3), radius: 100, x: 0, y: 30)
                            .frame(height: 320, alignment: .bottom)
                            .offset(y: 90)
                    }
                }
                
                VStack {
                    Spacer()
                        VStack {
                            Text("Beats Studio3")
                                .font(.system(size: 44))
                                .fontWeight(.semibold)
                                .frame(maxWidth: .infinity)
                                .frame(height: 80)
                                .foregroundColor(.white)
                            
                            Text("Wireless On-Ear Headphones")
                                .font(.callout)
                                .foregroundColor(.white.opacity(0.7))
                                .frame(maxWidth: .infinity)
                                .foregroundColor(.black)
                                .padding(.top, -10)

                            VStack {
                                HStack {
                                    Button(action: {
                                        // Action to perform when button is tapped
                                        print("Start training tapped!")
                                    }, label: {
                                        HStack {
                                            Text("Watch the video")
                                                .font(.callout)
                                                .fontWeight(.semibold)
                                                .foregroundColor(.white)
                                                .background(Color.black)
                                            
                                            Spacer(minLength: 10)
                                            
                                            Image(systemName: "play.circle")
                                                .renderingMode(.original)
                                                .font(.title)
                                                .fontWeight(.thin)
                                                .foregroundColor(.white)
                                        }
                                        .frame(height: 60)
                                        .padding(.horizontal, 20)
                                        .clipShape(Capsule())
                                        .overlay(
                                            Capsule(style: .continuous)
                                                .stroke(Color("Red"), lineWidth: 2)
                                        )
                                        
                                    })
                                }
                                .frame(width: 210, height: 60)
                            }
                            .frame(height: 80)

                            VStack {
                                Spacer()
                                Button(action: {
                                    // Action to perform when button is tapped
                                    print("Start training tapped!")
                                }, label: {
                                    Text("Add to cart")
                                        .font(.callout)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                        .frame(width: UIScreen.main.bounds.width / 1.2, height: 60)
                                        .background(Color("Red"))
                                        .clipShape(Capsule())
                                })
                            }
                            .frame(height: 80)
                        }
                        .padding(.horizontal, 30)
                        .padding(.top, 40)
                        .padding(.bottom, 30)
                }
                .ignoresSafeArea()
            }
        }
        .overlay(
            VStack {
                HStack {
                    ZStack {
                        Button(action: {
                            // action to perform when button is tapped
                        }) {
                            Image(systemName: "arrow.left")
                                .renderingMode(.original)
                                .font(.title2)
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                                .padding(16)
                                .background(Color.white.opacity(0))
                                .clipShape(Circle())
                        }
                    }
                    
                    Spacer()
                    
                    HStack {
                        Image("beats-logo")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50)
                    }
                    
                    Spacer()
                    
                    ZStack {
                        Button(action: {
                            // action to perform when button is tapped
                        }) {
                            Image("photo2")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 34, height: 34)
                                .clipShape(Circle())
                                .padding(2)
                                .overlay(
                                    Circle()
                                        .stroke(Color.white, lineWidth: 2)
                                )
                        }
                    }
                }
                .padding(.horizontal, 16)
                .frame(width: UIScreen.main.bounds.width)
                
                Spacer()
            }
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

