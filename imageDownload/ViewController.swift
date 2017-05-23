//
//  ViewController.swift
//  imageDownload
//
//  Created by BishopHill on 5/20/17.
//  Copyright © 2017 Dumb Unicorn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var bachImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        
        if documentsPath.count > 0 {
            
            let documentsDirectory = documentsPath[0]
            
            let restorePath = documentsDirectory + "/bach.jpg"
            
            
            bachImageView.image = UIImage(contentsOfFile: restorePath)
                
            
        }

        
        /*
        let url = URL(string: "https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=imgres&cd=&cad=rja&uact=8&ved=0ahUKEwim6r-bhoXUAhWC7hoKHTgwDD4QjRwIBw&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FJohann_Sebastian_Bach&psig=AFQjCNGGNVZGSdNg4rAKlgDaPKv9F_bWYg&ust=1495595680173699")!
        
        let request = NSMutableURLRequest(url: url)
        
        let task = URLSession.shared.dataTask(with: request as URLRequest) {
            
            data, response, error in
           
            if error != nil {
                
                print(error)
                
            } else {
                
                if let data = data {
                
                if let bachImage = UIImage(data: data) {
                    
                self.bachImageView.image = bachImage
                    
                 let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
                    
                    if documentsPath.count > 0 {
                        
                        let documentsDirectory = documentsPath[0]
                            
                            let savePath = documentsDirectory + "/bach.jpg"
                            
                            do {
                                
                                try UIImageJPEGRepresentation(bachImage, 1)?.write(to: URL(fileURLWithPath: savePath))
                            
                            } catch {
                                
                                //process error
                                
                                }
                            
                        }
                    
                    }
                    
                }
                
            }
            
        }
        
        task.resume() */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

