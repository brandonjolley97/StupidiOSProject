//
//  ViewController.swift
//  StupidiOSProject
//
//  Created by Jolley, Brandon on 12/11/15.
//  Copyright (c) 2015 Jolley, Brandon. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    
    
    @IBAction func hasRed(sender: UISwitch)
    {
        if(sender.on)
        {
            view.backgroundColor = UIColor(red: CGFloat(0.999), green: CGFloat(0.134), blue: CGFloat(0.745), alpha: 1.0)
        }
        else
        {
            view.backgroundColor = UIColor(red: CGFloat(0.001), green: CGFloat(0.134), blue: CGFloat(0.745), alpha: 1.0)
        }
    }
    
    @IBAction func changeRed(sender: UISlider)
    {
        
        let newRed = CGFloat(sender.value)
        
        
        view.backgroundColor = UIColor(red: newRed, green: CGFloat(0.134), blue: CGFloat(0.745), alpha: 1.0)
    }
    
    @IBAction func randomColorChange(sender: UIButton)
    {
        let newRed = CGFloat(Double(arc4random_uniform(256)) / 255.000 )
        let newGreen = CGFloat(Double(arc4random_uniform(256)) / 255.000 )
        let  newBlue = CGFloat(Double(arc4random_uniform(256)) / 255.000 )
        
        view.backgroundColor = UIColor(red: newRed, green: newGreen, blue: newBlue, alpha: 1.0)
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

