//
//  ViewController.swift
//  Online Video Courses
//
//  Created by Rishabh Raj on 19/12/18.
//  Copyright © 2018 Rishabh Raj. All rights reserved.
//

import UIKit

class CoursesViewController: UIViewController {
    
    @IBOutlet weak var chefCourseButton: UIButton!
    @IBOutlet weak var popStarCourseButton: UIButton!
    
    @IBOutlet weak var developerCourseButton: UIButton!
    
    var courses = CourseStore.downloadNewCourses()
    var selectedCourse : Course!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    

    @IBAction func chefButtonPressed(_ sender: UIButton) {
        selectedCourse = courses[0]
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    
    @IBAction func popStarButtonPressed(_ sender: UIButton) {
        selectedCourse = courses[1]
        performSegue(withIdentifier: "detailSegue", sender: nil)
        
    }
    @IBAction func developerButtonPressed(_ sender: Any) {
        selectedCourse = courses[2]
        performSegue(withIdentifier: "detailSegue", sender: nil)
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailSegue" {
            let courseDetailVC = segue.destination as! DetailViewController
            courseDetailVC.course = selectedCourse
        }
    }
}

