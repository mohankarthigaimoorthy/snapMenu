//
//  ViewController.swift
//  snapMenu
//
//  Created by Imcrinox Mac on 16/12/1444 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var screenScroll: UIScrollView!
    
    var firstView : screen1ViewController = screen1ViewController(nibName: "screen1ViewController", bundle: nil)
    var secondView : screen2ViewController = screen2ViewController(nibName: "screen2ViewController", bundle: nil)
    var thirdView : screen3ViewController = screen3ViewController(nibName: "screen3ViewController", bundle: nil)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.addChild(firstView)
        self.screenScroll.addSubview(firstView.view)
        firstView.didMove(toParent: self)
        
        self.addChild(secondView)
        self.screenScroll.addSubview(secondView.view)
        secondView.didMove(toParent: self)
        
        self.addChild(thirdView)
        self.screenScroll.addSubview(thirdView.view)
        thirdView.didMove(toParent: self)
        
        var secondFrame: CGRect = secondView.view.frame
        secondFrame.origin.x = self.view.frame.width
        secondView.view.frame = secondFrame
        
        var thirdFrame: CGRect = thirdView.view.frame
        thirdFrame.origin.x = 2 * self.view.frame.width
        thirdView.view.frame = thirdFrame
        
        self.screenScroll.contentSize = CGSize(width: self.view.frame.width * 3, height: self.view.frame.height)
        
        self.screenScroll.contentOffset.x += view.frame.width
    }


}

