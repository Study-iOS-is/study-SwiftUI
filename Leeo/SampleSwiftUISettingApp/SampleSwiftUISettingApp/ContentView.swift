//
//  ContentView.swift
//  SampleSwiftUISettingApp
//
//  Created by sei_dev on 12/30/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List{
                NavigationLink {
                    Text("프로필 화면")
                } label: {
                    Section {
                        HStack {
                            Image(systemName: "suitcase.rolling.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width:30, height:30)
                                .padding(10)
                                .background(.gray)
                                .foregroundColor(.white)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading, spacing: 3)  {
                                Text("Is")
                                    .font(.system(size:24))
                                    .fontWeight(.medium)
                                Text("Apple ID, iCloud+, 미디어 및 구입 항목")
                                    .font(.system(size:14))
                            }
                            .padding(.leading, 6)
                        }
                        .padding(.vertical, 10)
                    }
                }

                
                Section {
                    HStack {
                        Image(systemName: "hourglass")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.indigo)
                            .foregroundColor(.white)
                            .cornerRadius(5)
                        NavigationLink("스크린타임") {
                            Text("스크린 타임 화면")
                        }
                    }
                }
                Section {
                    HStack {
                        Image(systemName: "gearshape.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.gray)
                            .foregroundColor(.white)
                            .cornerRadius(5)
                        NavigationLink("일반") {
                            Text("일반 화면")
                        }
                    }
                    HStack {
                        Image(systemName: "figure.wave.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(5)
                        NavigationLink("손쉬운 사용") {
                            Text("손쉬운 사용 화면")
                        }
                    }
                    HStack {
                        Image(systemName: "hourglass")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.indigo)
                            .foregroundColor(.white)
                            .cornerRadius(5)
                        NavigationLink("스크린타임") {
                            Text("스크린 타임 화면")
                        }
                    }
                    Text("hello")
                }
            }
            .navigationTitle("설정")
        }
    }
}

//struct oneView: View {
//    let imageName: String
//    let navigationLinkTitle: String
//    var navigationLink: any View
//
//    var body: some View {
//        HStack {
//            Image(systemName: imageName)
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 20, height: 20)
//                .padding(.all, 4)
//                .background(.indigo)
//                .foregroundColor(.white)
//                .cornerRadius(5)
//            NavigationLink(navigationLinkTitle) { navigationLink as View }
//        }
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
