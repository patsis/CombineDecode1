//
//  CommentsView.swift
//  CombineDecode
//
//  Created by Harry Patsis on 24/8/19.
//  Copyright © 2019 Harry Patsis. All rights reserved.
//
// Use Live Preview to see the result

import SwiftUI

struct CommentsView: View {
  @ObservedObject var commentModel: CommentViewModel
  var body: some View {
    NavigationView {
      List(self.commentModel.comments) { comment in
        CommentCell(comment: comment)
      }
      .navigationBarTitle(Text("Comments"))      
    }
    .onAppear {
      self.commentModel.load()
    }
  }
}

struct CommentsView_Previews: PreviewProvider {
  static var previews: some View {
    CommentsView(commentModel: CommentViewModel())
  }
}
