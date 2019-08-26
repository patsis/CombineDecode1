//
//  CommentCellView.swift
//  CombineDecode
//
//  Created by Harry Patsis on 24/8/19.
//  Copyright © 2019 Harry Patsis. All rights reserved.
//

import SwiftUI

struct CommentCell: View {
  var comment: Comment
  var body: some View {
    VStack {
      HStack {
        Image(systemName: "person")
        Text(comment.name).lineLimit(1)
        Spacer()
      }
      .padding(.leading)
      .padding(.top, 6)
      .padding(.bottom, 6)
      .background(Color.init(.systemGray5))
      HStack {
        Image(systemName: "envelope")
        Text(comment.email).lineLimit(1)
        Spacer()
      }
      .padding(.leading)
      .padding(.bottom, 6)
      HStack {
        Image(systemName: "text.bubble")
        Text(comment.body).lineLimit(1)
        Spacer()
      }
      .padding(.leading)
      .padding(.bottom, 6)
    }.background(Color.init(.systemGray6))
    .cornerRadius(16)
    .shadow(radius: 3)
  }
}

struct CommentCell_Previews: PreviewProvider {
  static var previews: some View {
    CommentCell(comment: Comment(id: 0, postId: 0, name: "mitsos", email: "mitsaras@gmail.com", body: "mitsos comment body goes here and mitsos comment body goes here and mitsos comment body goes here and "))
    .previewLayout(.sizeThatFits)
  }
}


