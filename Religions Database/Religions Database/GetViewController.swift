//
//  GetViewController.swift
//  Religions Database
//
//  Created by WonJae Jeong on 12/8/16.
//  Copyright © 2016 J Jeong. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class GetViewController: UIViewController {

    @IBOutlet weak var lblSubject: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblSubject.text = ""
        lblDescription.text = ""
        let geturl = "http://localhost:3000/tasks"
        
        Alamofire.request(geturl , method: .get, encoding: JSONEncoding(options: [])).responseJSON { response in
            debugPrint(response)
            
            if let result = response.result.value {
                let json = JSON(result as! NSDictionary)
                let tasks = json["data"].arrayValue
                
                // display only the last task
                let subject = tasks[tasks.count - 1]["subject"].string
                let description = tasks[tasks.count - 1]["description"].string
                self.lblSubject.text = subject
                self.lblDescription.text = description
                
            } else {
                self.lblSubject.text = "Error loading data"
                self.lblDescription.text = "Error loading data"
                }
            }
        }
        // Do any additional setup after loading the view.

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
