//
//  ProfileView.swift
//  Clubhouse
//
//  Created by Raza Khan on 11/06/21.
//

import SwiftUI

struct ProfileView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    private let profilePicSize: CGFloat = 86
    var body: some View {
        ZStack{
            VStack(alignment : .leading){
                ProfileHeaderView{ action in
                    switch action{
                    case .back:
                        presentationMode.wrappedValue.dismiss()
                    }
                    
                }
                Group{
                    Image.raza
                        .resizable()
                        .frame(
                            width:profilePicSize,
                            height:profilePicSize
                        )
                        .background(Color.black)
                        .cornerRadius(30)
                    Text("iOS | Flutter • Raza Khan")
                        .font(Font.Nunito.bold(size: 20))
                    
                    Text("@razakhan.dev")
                        .font(Font.Nunito.bold(size: 18))
                        .padding(.top, 1)
                    
                    
                    HStack{
                        HStack(spacing: 0){
                            Text("117")
                                .font(Font.Nunito.extraBold(size: 16))
                                .padding(.trailing, 5)
                            Text("followers")
                                .font(Font.Nunito.extraBold(size: 12))
                                .padding(.trailing, 5)
                        }
                        .padding(.trailing, 30)
                        HStack(spacing: 0){
                            Text("21")
                                .font(Font.Nunito.extraBold(size: 16))
                                .padding(.trailing, 5)
                            Text("following")
                                .font(Font.Nunito.extraBold(size: 12))
                                .padding(.trailing, 5)
                        }
                        .padding(.trailing, 30)
                    }
                    .padding(.top, 15)
                    
                    Text("Lead iOS & Flutter Developer @UraniumMobile and @Personax.in")
                        .padding(.top, 10)
                        .font(Font.Nunito.semiBold(size: 14))
                    Text("https://razakhan.netlify.app")
                        .padding(.top, 10)
                        .font(Font.Nunito.semiBold(size: 18))
                    
                    HStack(alignment: .top){
                        Image("person_0")
                            .resizable()
                            .frame(width : 38, height: 38)
                            .cornerRadius(15)
                        VStack(alignment: .leading){
                            Text("Join 18 June 2021")
                                .font(Font.Nunito.regular(size: 12))
                             Text("Nominated by "
                                    )
                             .font(Font.Nunito.regular(size: 12)) + Text("Sufiyan Khan")
                             .font(Font.Nunito.bold(size: 12))
                        }
                        
                    }
                }
                .foregroundColor(Color.textBlack)
                .padding(.horizontal, 15)
                
                Spacer()
                
            }
            .padding(.top, 65)
            
        }
        .frame(maxWidth : .infinity,
               maxHeight: .infinity)
        .background(Color.background)
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
