//
//  DetailViewController.swift
//  Online Video Courses
//
//  Created by Rishabh Raj on 27/12/18.
//  Copyright © 2018 Rishabh Raj. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class DetailViewController: UIViewController {
    
    @IBOutlet weak var joinCourseButton: UIButton!
    @IBOutlet weak var courseTitleLabel: UILabel!
    @IBOutlet weak var courseDescriptionTextView: UITextView!
    @IBOutlet weak var featuredImageView : UIImageView!
    
    
    var course : Course!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        featuredImageView.image = course.featuredImage
        joinCourseButton.setTitle("Join \(course.instructor)", for: .normal)
        courseTitleLabel.text = course.title
        courseDescriptionTextView.text = course.description
        
        navigationItem.title = course.instructor
        
    }
    
    @IBAction func playButtonDidTap() {
         let videoURL =  course.instructionVideoURL
        let player = AVPlayer(url: videoURL)
        let playerViewController = AVPlayerViewController()
        playerViewController.player? = player
        present(playerViewController, animated: true, completion: {
        playerViewController.player?.play()
        })
        
    }
    
    @IBAction func joinButtonDidTap() {
        let alertController = UIAlertController(title: "Congratulations", message: "You just enrolled in \(course.title) successfully", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "YAY!", style: .default, handler: nil)
        alertController.addAction(okAction)
        
        present(alertController, animated: true, completion: nil)
    }

}
