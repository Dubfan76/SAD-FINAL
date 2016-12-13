//
//  PostViewController.swift
//  Religions Database
//
//  Created by WonJae Jeong on 12/8/16.
//  Copyright © 2016 J Jeong. All rights reserved.
//

import UIKit
import Alamofire

class PostViewController: UIViewController {

    
    @IBOutlet weak var txtSubject: UITextField!
    @IBOutlet weak var txtDescription: UITextField!
    @IBOutlet weak var btnSend: UIButton!
    @IBOutlet weak var lblError: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblError.text = "";
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSend_Tap(_ sender: UIButton) {
        let url = "http://localhost:3000/task"
        
        let params: Parameters = [
        "subject" : txtSubject.text!,
        "description" : txtDescription.text!
        ]
    
    Alamofire.request(url , method: .post, parameters: params, encoding: JSONEncoding.default).responseString { response in
    debugPrint(response)
        }
    }

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
