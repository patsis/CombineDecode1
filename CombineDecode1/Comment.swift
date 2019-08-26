//
//  Comment.swift
//  CombineDecode
//
//  Created by Harry Patsis on 24/8/19.
//  Copyright © 2019 Harry Patsis. All rights reserved.
//

import Foundation

// MARK: - Todo
struct Comment: Codable, Identifiable {
  let id, postId: Int
  let name: String
  let email: String
  let body: String
  
//  enum CodingKeys: String, CodingKey {
//    case id, postId, name, email, body
//  }
//  
//  init(postId: Int, id: Int, name: String, email: String, body: String) {
//    self.postId = postId
//    self.id = id
//    self.name = name
//    self.email = email
//    self.body = body
//  }
}

typealias Comments = [Comment]
