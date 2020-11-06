//
//  ViewController.swift
//  LammyApp1
//
//  Created by PoohBear on 12/10/17.
//  Copyright © 2017 PoohBear. All rights reserved.
//

import UIKit
import AVKit


class ViewController: UIViewController {
    
    @IBAction func btnBarney(_ sender: Any) {
        if let path = Bundle.main.path(forResource: "barneyclip", ofType: "mp4") {
            let video = AVPlayer(url: URL(fileURLWithPath: path))
            let videoPlayer = AVPlayerViewController()
            videoPlayer.player = video
            
            present(videoPlayer, animated: true, completion: {
                video.play()
            })
        }
    }
    
    @IBAction func btnPokemon(_ sender: Any) {
        if let path = Bundle.main.path(forResource: "pokemonclip", ofType: "mp4") {
            let video = AVPlayer(url: URL(fileURLWithPath: path))
            let videoPlayer = AVPlayerViewController()
            videoPlayer.player = video
            
            present(videoPlayer, animated: true, completion: {
                video.play()
            })
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

