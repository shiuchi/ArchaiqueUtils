//
//  StoryBoardInstantiatable.swift
//  ArchaiqueUtils
//
//  Created by shiuchi on 2019/05/23.
//  Copyright © 2019 shiuchi. All rights reserved.
//

public protocol StoryBoardInstantiatable {
}

public extension StoryBoardInstantiatable where Self: UIViewController, Self: ClassNameOutputtable {
    
    static func instantiate() -> Self {
        let storyboard = UIStoryboard(name: className, bundle: nil)
        return storyboard.instantiateInitialViewController() as! Self
    }
}
