//
//  tipsView.swift
//  firstapp
//
//  Created by mac on 06/02/2021.
//

import SwiftUI

struct tipsView: View {
    let tips: [Tip]
    
    init() {
        let url = Bundle.main.url(forResource: "tips", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        tips = try! JSONDecoder().decode([Tip].self, from: data)
    }
    var body: some View {
        List(tips, id:\.text, children: \.children) { tip in
            if tip.children != nil {
            Label(tip.text, systemImage:"quote.bubble")
                .font(.headline)
            }else {
                Text(tip.text)
            }
        }
        .navigationTitle("Tips")
    }
}

struct tipsView_Previews: PreviewProvider {
    static var previews: some View {
        tipsView()
    }
}
