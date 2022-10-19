//
//  CustomCell.swift
//  Shopping List
//
//  Created by Tony Hong on 3/12/22.
//

import SwiftUI

struct CustomCell: View {
    
    var imageName: String
    var itemName: String
    var quantity: Int
    var body: some View {
        HStack {
            Image(imageName)
                .resizable()
                .frame(width: 40, height: 30)
            Text(itemName)
            Text(String(quantity))
                .frame(maxWidth: .infinity, alignment: .trailing)
        }
    }
}

