//
//  ViewController.swift
//  TrafficLight
//
//  Created by Михаил Иванов on 16.08.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var viewRedLight: UIView!
    @IBOutlet var viewYellowLight: UIView!
    @IBOutlet var viewGreenLight: UIView!
    @IBOutlet var buttonStart: UIButton!

    let radius: CGFloat = 50

    override func viewDidLoad() {
        super.viewDidLoad()
        viewRedLight.layer.cornerRadius = radius
        viewYellowLight.layer.cornerRadius = radius
        viewGreenLight.layer.cornerRadius = radius
        buttonStart.layer.cornerRadius = 10
    }

    @IBAction func clickButtonStart() {
        if viewRedLight.alpha == 1 {
            viewRedLight.alpha = 0.3
            viewYellowLight.alpha = 1
        } else if viewYellowLight.alpha == 1 {
            viewYellowLight.alpha = 0.3
            viewGreenLight.alpha = 1
        } else if viewGreenLight.alpha == 1 {
            viewGreenLight.alpha = 0.3
            viewRedLight.alpha = 1
        } else {
            buttonStart.setTitle("Next", for: .normal)
            viewRedLight.alpha = 1
        }
    }
}

