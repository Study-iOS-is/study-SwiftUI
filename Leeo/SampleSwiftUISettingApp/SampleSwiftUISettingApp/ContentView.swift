//
//  ContentView.swift
//  SampleSwiftUISettingApp
//
//  Created by sei_dev on 12/30/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isAirplaneModeOn: Bool = false
    @State private var isVPNOn: Bool = false
    
    var body: some View {
        NavigationView {
            List{
                NavigationLink {
                    Text("프로필 화면")
                } label: {
                    profileCell()
                }

                Section {
                    HStack {
                        NavigationLink("Apple Arcade 3개월 무료") {
                            Text("Apple Arcade 3개월 무료")
                        }
                    }
                }

                Section {
                    NavigationLink{
                        Text("마저하기 설정 화면")
                    } label: {
                        HStack{
                            Text("iPhone 설정 마저 하기")
                                .badge(1)
                        }
                    }
                }

                Section {
                    toggleCell(imageName: "airplane",
//                               imageBackgroundColor: .orange,
                               iconColor: .orange,
                               cellTitle: "에어플레인 모드",
                               toggleBind: $isAirplaneModeOn
                    )
                    textCell(imageName: "wifi",
                             imageBackgroundColor: .blue,
                             cellTitle: "Wi-Fi",
                             description: "SBA_YongSan") {
                        Text("Wifi 설정 화면")
                    }
                    textCell(imageName: "point.3.filled.connected.trianglepath.dotted",
                             imageBackgroundColor: .indigo,
                             cellTitle: "Bluetooth",
                             description: "켬") {
                        Text("BT 설정 화면")
                    }
                    plainCell(imageName: "dot.radiowaves.left.and.right",
                              imageBackgroundColor: .green,
                              cellTitle: "셀룰러") {
                        Text("셀룰러 화면")
                    }
                    plainCell(imageName: "personalhotspot",
                              imageBackgroundColor: .green,
                              cellTitle: "개인용 핫스팟") {
                        Text("개인용 핫스팟 화면")
                    }
                    toggleCell(imageName: "lock.icloud",
//                               imageBackgroundColor: .blue,
                               iconColor: .blue,
                               cellTitle: "VPN",
                               toggleBind: $isVPNOn
                    )
                }
                
                Section {
                    plainCell(imageName: "hourglass",
                              imageBackgroundColor: .indigo,
                              cellTitle: "스크린타임") {
                        Text("스크린타임 설정 화면")
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
    
    @ViewBuilder
    private func profileCell() -> some View {
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
    
    @ViewBuilder
//    private func toggleCell<S: ShapeStyle>(imageName:String, imageBackgroundColor: S, cellTitle: String, toggleBind: Binding<Bool>) -> some View {
    private func toggleCell(imageName:String, iconColor: Color, cellTitle: String, toggleBind: Binding<Bool>) -> some View {
        HStack {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .padding(.all, 4)
                .background(iconColor)
                .foregroundColor(.white)
                .cornerRadius(5)
            
            Toggle(cellTitle,
                   isOn: toggleBind)
        }
    }
    
    @ViewBuilder
    private func textCell<V:View, S: ShapeStyle>(imageName: String, imageBackgroundColor: S, cellTitle: String, description: String, destination: @escaping ()->V) -> some View {
        HStack {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .padding(.all, 4)
                .background(imageBackgroundColor)
                .foregroundColor(.white)
                .cornerRadius(5)
            
            NavigationLink{
                destination()
            } label: {
                HStack {
                    Text(cellTitle)
                    Spacer()
                    Text(description)
                        .foregroundColor(.gray)
                }
            }
        }
    }
    
    @ViewBuilder
    private func plainCell<V: View, S: ShapeStyle>(imageName: String, imageBackgroundColor: S, cellTitle: String, destination: @escaping ()->V) -> some View {
        HStack {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .padding(.all, 4)
                .background(imageBackgroundColor)
                .foregroundColor(.white)
                .cornerRadius(5)
            NavigationLink(cellTitle) {
                destination()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
