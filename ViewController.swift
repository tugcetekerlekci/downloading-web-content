//
//  ViewController.swift
//  Downloading Web Content
//
//  Created by Tugce Tekerlekci on 11/5/15.
//  Copyright © 2015 Tugce Tekerlekci. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        let url = NSURL(string: "https://www.stackoverflow.com")!
        
        webView.loadRequest(NSURLRequest(URL: url))
        
        
        
        
        //NSAppTransportSecurity OLAYI VAR BURADA EKLIYORSUN
        
        //CREATING A SESSION applicationun icinde bi tane browseraciyorsun sonra o seni url adresine goturuyor istedigin. 
        //senin icin bunu yapan sey sharedSession
        //get the contents of the URL
        
        /*
        
        //bu 3 variable data task with url e donecekmis bu 3 unu code un icinde kullanabilirsin..{parantexlerin icinde}
        let task = NSURLSession.sharedSession().dataTaskWithURL(url) { (data, response, error) -> Void in
            //this code will happen when the task is completed.
       
        //task create a session ,get contents of the url. eger basarili olursan content data variablein icine konulcak 
        //some info about data is in response. 
        //problem varsa error un icinde 
            //bu ifin anlami eger bi data olustiysa urlContentin icine at.ve alttaki kodu calistir
            
            
            if let urlContent = data
            {
                //nsstring allows us to use encoding, slightly different from string
                let webContent = NSString(data: urlContent, encoding: NSUTF8StringEncoding)
                
                dispatch_barrier_async(dispatch_get_main_queue(), { () -> Void in
                   
                    
                    self.webView.loadHTMLString(String(webContent),baseURL: nil)

                })
                
                
                
            
            }
            
            else
            {
                
            //show error message
            
            }
        
       
        
        }
        
         task.resume()
        */
        
    
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

