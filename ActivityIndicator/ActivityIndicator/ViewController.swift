//
//  ViewController.swift
//  ActivityIndicator
//
//  Created by discussolutions on 9/8/17.
//  Copyright © 2017 discussolutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
       
    }
    
        let messageFrame = UIView()
        var activityIndicator = UIActivityIndicatorView()
        var strLabel = UILabel()
        
        let effectView = UIVisualEffectView(effect: UIBlurEffect(style:.dark))
        
        func activityIndicator(_ title: String) {
            
            strLabel.removeFromSuperview()
            activityIndicator.removeFromSuperview()
            effectView.removeFromSuperview()
            
            strLabel            = UILabel(frame: CGRect(x: 50, y: 0, width: 160, height: 46))
            strLabel.text       = title
            strLabel.font       = UIFont.systemFont(ofSize: 19, weight: UIFontWeightMedium)
            strLabel.textColor  = UIColor(white: 0.9, alpha: 0.9)
            
            effectView.frame    = CGRect(x: view.frame.midX - strLabel.frame.width/2, y: view.frame.midY - strLabel.frame.height/2 , width: 170, height: 46)
            effectView.layer.cornerRadius = 10
            effectView.layer.masksToBounds = true
            effectView.backgroundColor = UIColor(red: 000.0 / 255.0, green: 130.0 / 255.0, blue: 164.0 / 255.0, alpha: 3.0)
    
            
            activityIndicator       = UIActivityIndicatorView(activityIndicatorStyle: .whiteLarge)
            activityIndicator.frame = CGRect(x: 0, y: 0, width: 46, height: 46)
            activityIndicator.startAnimating()
            
            effectView.addSubview(activityIndicator)
            effectView.addSubview(strLabel)
            view.addSubview(effectView)
        
        
    }
    func startIndic()
    {
        activityIndicator("Processing...")
        messageFrame.isHidden = false
        strLabel.isHidden = false
        effectView.isHidden = false
    }
    func stopIndic()
    {
        messageFrame.isHidden = true
        strLabel.isHidden = true
        effectView.isHidden = true
    }
    
    @IBAction func IndicatorStart(_ sender: UIButton)
    {
        startIndic()
    }
    
    @IBAction func IndicatorStop(_ sender: UIButton)
    {
      stopIndic()
    }
}

