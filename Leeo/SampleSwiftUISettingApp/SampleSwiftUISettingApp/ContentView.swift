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
                    toggleCell(imageName: "airplane",
                               iconColor: .orange,
                               cellTitle: "에어플레인 모드",
                               toggleBind: $isAirplaneModeOn
                    )
                    navigationLinkCell(imageName: "wifi",
                             iconColor: .blue,
                             cellTitle: "Wi-Fi",
                             subTitle: "SBA_YongSan") {
                        Text("Wifi 설정 화면")
                    }
                    navigationLinkCell(imageName: "point.3.filled.connected.trianglepath.dotted",
                             iconColor: .indigo,
                             cellTitle: "Bluetooth",
                             subTitle: "켬") {
                        Text("BT 설정 화면")
                    }
                    navigationLinkCell(imageName: "dot.radiowaves.left.and.right",
                              iconColor: .green,
                              cellTitle: "셀룰러") {
                        Text("셀룰러 화면")
                    }
                    navigationLinkCell(imageName: "personalhotspot",
                              iconColor: .green,
                              cellTitle: "개인용 핫스팟") {
                        Text("개인용 핫스팟 화면")
                    }
                    toggleCell(imageName: "lock.icloud",
                               iconColor: .blue,
                               cellTitle: "VPN",
                               toggleBind: $isVPNOn
                    )
                }
                
                Section {
                    navigationLinkCell(imageName: "hourglass",
                              iconColor: .indigo,
                              cellTitle: "스크린타임") {
                        Text("스크린타임 설정 화면")
                    }
                }
                Section {
                    navigationLinkCell(imageName: "gearshape.fill",
                                       iconColor: .gray,
                                       cellTitle: "일반") {
                        Text("일반 화면")
                    }
                   
                    navigationLinkCellV2(imageName: "figure.wave.circle",
                                       iconColor: .blue,
                                       cellTitle: "손쉬운 사용") {
                        Text("손쉬운 사용 화면")
                    }
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
    private func cellIcon(imageName: String, iconColor: Color) -> some View {
        Image(systemName: imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 20, height: 20)
            .padding(.all, 4)
            .background(iconColor)
            .foregroundColor(.white)
            .cornerRadius(5)
    }
    
    @ViewBuilder
    private func toggleCell(imageName:String, iconColor: Color, cellTitle: String, toggleBind: Binding<Bool>) -> some View {
        HStack {
            cellIcon(imageName: imageName, iconColor: iconColor)
            
            Toggle(cellTitle,
                   isOn: toggleBind)
        }
    }

    @ViewBuilder
    private func navigationLinkCell<V:View>(imageName: String, iconColor: Color, cellTitle: String, subTitle: String? = nil, destination: @escaping ()->V) -> some View {
        HStack {
            cellIcon(imageName: imageName, iconColor: iconColor)
            
            NavigationLink{
                destination()
            } label: {
                HStack {
                    Text(cellTitle)
                    if let subTitle {
                        Spacer()
                        Text(subTitle)
                            .foregroundColor(.gray)
                    }
                }
            }
        }
    }
    
    @ViewBuilder
    private func navigationLinkCellV2(imageName: String, iconColor: Color, cellTitle: String, subTitle: String? = nil, destination: @escaping ()-> some View ) -> some View {
        HStack {
            cellIcon(imageName: imageName, iconColor: iconColor)
            
            NavigationLink{
                destination()
            } label: {
                HStack {
                    Text(cellTitle)
                    if let subTitle {
                        Spacer()
                        Text(subTitle)
                            .foregroundColor(.gray)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
