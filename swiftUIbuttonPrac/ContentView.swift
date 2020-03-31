//
//  ContentView.swift
//  swiftUIbuttonPrac
//
//  Created by 楊昇融 on 2020/3/27.
//  Copyright © 2020 limwris. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button(action: {
                //執行內容
                print("hello world")
            }) {
                //外觀設定
                Text("Hello World")
                    .padding() //這個放前放後有差別，決定空白區塊會不會被background影響
                    .background(Color.purple) //紫色背景
                    .foregroundColor(.white)  //字體白色
                    .font(.title)  //改變字型
            }
            
            Spacer()
            
            Button(action: {
                print("Hello World 2")
            }) {
                Text("Hello World 2")
                    .foregroundColor(Color.black)
                    .font(.title)
                    .padding()
                    .border(Color.black, width: 5) //增加邊框
                       
            }
            
            Spacer()
            
            Button(action: {
                print("Hello World 3")
            }) {
                Text("Hello World 3")
                    .padding()
                    .foregroundColor(Color.black)
                    .font(.title)
                    .background(Color.purple)
                    .padding(10)
                    .border(Color.purple, width: 5)
                       
            }
            
            Spacer()
            
            Button(action: {
                print("Hello World 4")
            }) {
                Text("Hello World 4")
                    .fontWeight(.bold)
                    .font(.title)
                    .padding()
                    .background(Color.purple)
                    .foregroundColor(Color.black)
                    .cornerRadius(40)
                    .padding(10)
                    .cornerRadius(40)
                    .overlay(
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(Color.purple, lineWidth: 5)
                    ) //利用重疊新增圓邊外框
            }
            
            Spacer()
        }
        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
