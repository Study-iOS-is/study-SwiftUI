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
