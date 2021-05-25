//
//  Tipsview.swift
//  cityscapes
//
//  Created by Ketul Adesara on 25/05/21.
//

import SwiftUI

struct Tipsview: View {
    let tips: [Tip]
    
    init() {
        let url = Bundle.main.url(forResource: "tips", withExtension: "json")!
        let data=try! Data(contentsOf: url)
        tips = try! JSONDecoder() .decode([Tip].self, from: data)
    }
    var body: some View {
        List(tips, id: \.text, children: \.children) { tip in
            if tip.children != nil {
                Label(tip.text, systemImage:
                "quote.bubble")
                .font(.headline)
            }   else {
                    Text(tip.text)
            }
        }
        .navigationTitle("Tips")
    }
}

struct Tipsview_Previews: PreviewProvider {
    static var previews: some View {
        Tipsview()
        }
    }
