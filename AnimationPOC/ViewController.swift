//
//  ViewController.swift
//  AnimationPOC
//
//  Created by Sunderrajan Ranganathan on 20/05/16.
//  Copyright © 2016 Sunderrajan Ranganathan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var m_HeaderView: UIView!
    
    @IBOutlet weak var m_BottomView: UIView!
    
    @IBOutlet weak var m_HeaderVwTopConst: NSLayoutConstraint!
    
    @IBOutlet weak var m_LogInView: UIView!
    @IBOutlet weak var m_SignUpView: UIView!
    
    
    @IBOutlet weak var m_HeaderVwBottomConst: NSLayoutConstraint!
    
    @IBOutlet weak var m_AuthViewBottomConst: NSLayoutConstraint!
    
    @IBOutlet weak var m_AlphaHeaderImgVw: UIImageView!
    
    
    @IBOutlet weak var m_LogInUserNameTxtFd: UITextField!
    @IBOutlet weak var m_SignUpEmailTxtField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

        
        headerViewAnimation()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func headerViewAnimation()
    {
        self.m_HeaderVwBottomConst.constant = 0.0
        self.m_AlphaHeaderImgVw.transform = CGAffineTransformMakeScale(2.0, 2.0)
        self.view.layoutIfNeeded()
        
        UIView.animateWithDuration(0.5, delay: 0.0, options: UIViewAnimationOptions.CurveEaseIn, animations: {
            
            self.m_HeaderVwBottomConst.constant = 350
            self.m_AlphaHeaderImgVw.transform = CGAffineTransformIdentity
            self.view.layoutIfNeeded()
            
            }, completion: { finished in
                
        })
    }
    
    // MARK:- Custom Methods
    
    // MARK: - TextField Animation
    func animateTextField(var up:Bool, height:CGFloat, var view:UIView)
    {
        if up == true
        {
            UIView.animateWithDuration(0.1, animations: { () -> Void in
                view.frame = CGRectMake(view.frame.origin.x, -height, view.frame.width, view.frame.height)
            })
        }
        else
        {
            UIView.animateWithDuration(0.1, animations: { () -> Void in
                view.frame = CGRectMake(view.frame.origin.x, height, view.frame.width, view.frame.height)
            })
        }
        
    }
    
//    func keyboardWillHide(notification: NSNotification)
//    {
//        let userInfo = notification.userInfo
//        let keyboardSize = (userInfo![UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.CGRectValue()
//        self.m_HeaderVwTopConst.constant = keyboardSize!.height/4
//        self.m_AuthViewBottomConst.constant = keyboardSize!.height/4
//        UIView.animateWithDuration(0.5)
//        {
//            self.view.layoutIfNeeded()
//        }
//    }
//    
//    func keyboardWillShow(notification: NSNotification)
//    {
////        self.m_HeaderVwTopConst.constant = 350.0
//        self.m_AuthViewBottomConst.constant = 40.0
//        UIView.animateWithDuration(0.5)
//        {
//            self.view.layoutIfNeeded()
//        }
//    }
    
//    override func viewWillAppear(animated: Bool)
//    {
//        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(ViewController.keyboardWillShow(_:)), name: UIKeyboardWillShowNotification, object: nil)
//        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(ViewController.keyboardWillHide(_:)), name: UIKeyboardWillHideNotification, object: nil)
//        
//    }
//    override func viewWillDisappear(animated: Bool)
//    {
//        NSNotificationCenter.defaultCenter().removeObserver(self)
//        
//    }
    
    @IBAction func act_SignUp(sender: UIButton)
    {
//        m_SignUpEmailTxtField.becomeFirstResponder()
//        animateTextField(true, height: 60.0, view: self.view)
        
        UIView.animateWithDuration(0.5, delay: 0.0, options: UIViewAnimationOptions.CurveEaseIn, animations: {
            
            
            self.m_BottomView.alpha = 0.0
            self.m_BottomView.hidden = true
            self.m_SignUpView.alpha = 0.0
            self.m_SignUpView.hidden = false
            self.m_SignUpView.alpha = 1.0
            
            
            self.m_HeaderVwBottomConst.constant = 370.0
            self.view.layoutIfNeeded()
            
            
            }, completion: { finished in
                
                
                
                
        })

    }
    
    
    @IBAction func act_LogIn(sender: UIButton)
    {
//        self.m_BottomView.alpha = 1.0
//        self.m_BottomView.hidden = true

//        m_LogInUserNameTxtFd.becomeFirstResponder()
//        animateTextField(true, height: 60.0, view: self.view)

        
        UIView.animateWithDuration(0.5, delay: 0.0, options: UIViewAnimationOptions.CurveEaseIn, animations: {
            
            
            self.m_BottomView.alpha = 0.0
            
           
            self.m_BottomView.hidden = true
            
            self.m_LogInView.alpha = 0.0
            

            
            self.m_LogInView.hidden = false

            self.m_LogInView.alpha = 1.0
            
            
            self.m_HeaderVwBottomConst.constant = 370.0
            self.view.layoutIfNeeded()
            
            
            }, completion: { finished in
                
                

                
        })
        
    }
    
    
    @IBAction func act_SignUpViewLogIn(sender: UIButton) {
        
        UIView.animateWithDuration(0.5, delay: 0.0, options: UIViewAnimationOptions.CurveEaseIn, animations: {
            
            
//            self.m_BottomView.alpha = 0.0
//            self.m_BottomView.hidden = true
            self.m_SignUpView.alpha = 0.0
            self.m_SignUpView.hidden = true
            self.m_LogInView.alpha = 0.0
            self.m_LogInView.hidden = false
            self.m_LogInView.alpha = 1.0
            
            
            self.m_HeaderVwBottomConst.constant = 370.0
            self.view.layoutIfNeeded()
            
            
            }, completion: { finished in
                
                
                
                
        })

        
    }


    @IBAction func act_LoginViewSignUp(sender: UIButton) {
        
        
        UIView.animateWithDuration(0.5, delay: 0.0, options: UIViewAnimationOptions.CurveEaseIn, animations: {
            
            
            self.m_LogInView.alpha = 0.0
            self.m_LogInView.hidden = true
            self.m_SignUpView.alpha = 0.0
            self.m_SignUpView.hidden = false
            self.m_SignUpView.alpha = 1.0
            
            
            self.m_HeaderVwBottomConst.constant = 370.0
            self.view.layoutIfNeeded()
            
            
            }, completion: { finished in
                
                
                
                
        })

    }
}

