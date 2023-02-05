//
//  ViewController.swift
//  nuevamarimba
//
//  Created by edsam9999 on 02/02/23.
//

import UIKit
import AVFoundation //reproducir sonido y videos

class ViewController: UIViewController {
    
    var reproductor: AVAudioPlayer? // ? es optional
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func reproducirNota(_ cualNota: String){
        //variable segura
        guard let url = Bundle.main.url(forResource: cualNota, withExtension: "mp3") else{
            return
        }
        do{
            reproductor = try AVAudioPlayer(contentsOf: url)
            reproductor?.play()
                }catch{
                    print ("Error al reproducir el sonido")
                }
                 
    }
    
    @IBAction func PlayButton(_ sender: UIButton) {
        print(sender.titleLabel?.text)
        reproducirNota((sender.titleLabel?.text)!)// extracción forzada
    }
    
}

