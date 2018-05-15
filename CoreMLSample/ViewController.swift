//
//  ViewController.swift
//  CoreMLSample
//
//  Created by jacob Liu on 15/05/18.
//  Copyright © 2018 8locations. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   var objGoogleNetPlacesModel = GoogLeNetPlaces()
    
    @IBOutlet weak var imageTypeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // Called this method when tap on Image
    @IBAction func tappedOnImage(sender:UITapGestureRecognizer)
    {
        let imageView  = sender.view as? UIImageView
        if let  image  = imageView?.image
        {
           if let placeTypeString  =  imageTypeDetection(image:image)
           {
                imageTypeLabel.text = placeTypeString
            
            }
            
            
        }
        
    }
    
    func imageTypeDetection(image:UIImage) -> String? {
        
        // Getting  pixelBuffer by Image Data.
        if let pixelBuffer = ImageProcessor.pixelBuffer(forImage: image.cgImage!)
        {

            // Getting place type by supplying pixelBuffer.
            guard let type =  try? objGoogleNetPlacesModel.prediction(sceneImage: pixelBuffer) else {fatalError("Un Expected")}
            
            return type.sceneLabel
            
        }
        
        return nil
    }

    
}

