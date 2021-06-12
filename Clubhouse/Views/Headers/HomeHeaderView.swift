//
//  HomeHeaderView.swift
//  Clubhouse
//
//  Created by Raza Khan on 11/06/21.
//

import SwiftUI

struct HomeHeaderView: View {
    
   
    enum HomeHeaderAction {
        case profile
    }
    
    typealias HomeHeaderActionHandler = (_ action: HomeHeaderAction) -> Void
    let handler: HomeHeaderActionHandler
    internal init(handler: @escaping HomeHeaderView.HomeHeaderActionHandler){
        self.handler = handler
    }
    var body: some View {
        HStack(spacing: 20){
            Image.search
                
            Spacer()
            Image.invite
            
            Image.calendar
           
            Image.notificationBell
            Button(action: {
                handler(.profile)
            },
                   label: {
                    Image.raza
                        .resizable()
                        .frame(
                        width:40,
                            height:40
                        ).background(Color.black)
                        .cornerRadius(15)
            })
            
            
        }
        .font(Font.Nunito.bold(size: 24))
        .frame(maxWidth: .infinity,
               maxHeight: 50)
        .padding(.horizontal, 15)
    }
}

struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView{ _ in }
            
    }
}
