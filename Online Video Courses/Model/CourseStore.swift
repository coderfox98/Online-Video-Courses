//
//  CourseStore.swift
//  WallieCourses
//
//  Created by David Tran on 10/23/18.
//  Copyright © 2018 Wallie. All rights reserved.
//

import UIKit

class CourseStore
{
  static func downloadNewCourses() -> [Course]
  {
    let chefCourse = Course(button: #imageLiteral(resourceName: "cover_chef"), title: "Become a Pro Chef", instructor: "Gordon Ramsay", featuredImage: #imageLiteral(resourceName: "chef"), instructionVideoURL: URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")!, description: "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.")
    
    let popStarCourse = Course(button: #imageLiteral(resourceName: "cover_pop.png"), title: "Become a Pop Star", instructor: "Taylor Swift", featuredImage: #imageLiteral(resourceName: "pop.jpg"), instructionVideoURL: URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")!, description: "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.")
    
    let swiftCourse = Course(button: #imageLiteral(resourceName: "cover_developer.png"), title: "Become an iOS Developer", instructor: "Duc Tran", featuredImage: #imageLiteral(resourceName: "developer.jpeg"), instructionVideoURL: URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")!, description: "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.")
    
    return [chefCourse, popStarCourse, swiftCourse]
  }
}

