//
//  Post.swift
//  SocialNetwork
//
//  Created by Joseph Kim on 2/1/17.
//  Copyright © 2017 Joseph Kim. All rights reserved.
//

import Foundation

class Post {
    private var _caption: String!
    private var _imageUrl: String!
    private var _likes: Int!
    private var _postId: String!
    
    var caption: String {
        return _caption
    }
    
    var imageUrl: String {
        return _imageUrl
    }
    
    var likes: Int {
        return _likes
    }
    
    var postId: String {
        return _postId
    }
    
    init(caption: String, imageUrl: String, likes: Int) {
        _caption = caption
        _imageUrl = imageUrl
        _likes = likes
    }
    
    init(postId: String, postData: Dictionary<String, AnyObject>) {
        self._postId = postId
        
        if let caption = postData["caption"] as? String {
            _caption = caption
        }
        
        if let imageUrl = postData["imageUrl"] as? String {
            _imageUrl = imageUrl
        }
        
        if let likes = postData["likes"] as? Int {
            _likes = likes
        }
    }
}
