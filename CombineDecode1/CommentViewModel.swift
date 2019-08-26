//
//  CommentViewModel.swift
//  CombineDecode
//
//  Created by Harry Patsis on 24/8/19.
//  Copyright © 2019 Harry Patsis. All rights reserved.
//


import Foundation
import Combine

public class CommentViewModel: ObservableObject {
  @Published var comments: Comments = []
  
  func shuffle() {
    self.comments.shuffle()
  }
  
  func load() {
    guard let url = URL(string: "https://jsonplaceholder.typicode.com/comments/") else {
      return
    }
    URLSession.shared.dataTask(with: url) {(data, response, error) in
      do {
        guard let data = data else {
          return
        }
        let comments = try JSONDecoder().decode(Comments.self, from: data)
        DispatchQueue.main.async {
          self.comments = comments
        }
      } catch let error {
        print("Failed To decode: ", error)
      }
    }.resume()
  }
}

