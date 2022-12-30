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
                    HStack {
                        Image(systemName: "airplane")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.orange)
                            .foregroundColor(.white)
                            .cornerRadius(5)
                        
                        Toggle("에어플레인 모드",
                               isOn: $isAirplaneModeOn)
                    }
                    HStack {
                        Image(systemName: "wifi")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(5)
                        
                        NavigationLink{
                            Text("와이파이 설정 화면")
                        } label: {
//                            Text("Wi-Fi")
//                                .badge("SBA_YongSan")
                            HStack {
                                Text("Wi-Fi")
                                Spacer()
                                Text("SBA_YongSan")
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                    
                    HStack {
                        Image(systemName: "point.3.filled.connected.trianglepath.dotted")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.indigo)
                            .foregroundColor(.white)
                            .cornerRadius(5)
                        
                        NavigationLink{
                            Text("Bluetooth 설정 화면")
                        } label: {
                            HStack {
                                Text("Bluetooth")
                                Spacer()
                                Text("켬")
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                    HStack {
                        Image(systemName: "dot.radiowaves.left.and.right")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.green)
                            .foregroundColor(.white)
                            .cornerRadius(5)
                        NavigationLink("셀룰러") {
                            Text("셀룰러 화면")
                        }
                    }
                    HStack {
                        Image(systemName: "personalhotspot")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.green)
                            .foregroundColor(.white)
                            .cornerRadius(5)
                        NavigationLink("개인용 핫스팟") {
                            Text("개인용 핫스팟 화면")
                        }
                    }
                    HStack {
                        Image(systemName: "lock.icloud")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(5)
                        
                        Toggle("VPN",
                               isOn: $isVPNOn)
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
