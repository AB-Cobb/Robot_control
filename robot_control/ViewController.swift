//
//  ViewController.swift
//  robot_control
//
//  Created by laptop on 2020-02-27.
//  Copyright © 2020 joey_corp. All rights reserved.
//

import UIKit
import SocketIO

class ViewController: UIViewController {
    
    var socket : SocketIOClient!
    
    @IBOutlet weak var IBO_cam: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let cam_url = URL("site.domain.com"){
            let req = URLRequest(url: cam_url)
            IBO_cam.loadRequest(req)
        }
        
        socket = SocketIOClient(socketURL: "localhost:3000")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func startForward(_ sender: Any) {
        socket.emit("instruction", "forward_start" )
    }
    @IBAction func endForward(_ sender: Any) {
        socket.emit("instruction", "forward_end" )
    }
    
    @IBAction func startBackward(_ sender: Any) {
    }
    
    @IBAction func startTurnLeft(_ sender: Any) {
    }
    
    @IBAction func endTurnLeft(_ sender: Any) {
    }
    
    
    @IBAction func startTurnRight(_ sender: Any) {
    }
    
    @IBAction func endTurnRight(_ sender: Any) {
    }
    
    @IBAction func endBackwards(_ sender: Any) {
    }
    
    
    
    
    
    
    
}

