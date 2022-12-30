//
//  ViewController.swift
//  RPG
//
//  Created by Vinayak Negi on 30/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .white
        return imageView
    }()
    
    private let button: UIButton = {
        let button = UIButton()
       // button.backgroundColor = .systemPink
        button.setTitle("Next", for: .normal)
        button.setTitleColor(.white, for: .normal)
        
        
        button.backgroundColor = .clear
        button.layer.cornerRadius = 12
        button.layer.borderWidth = 3
        button.layer.borderColor = UIColor.systemIndigo.cgColor
        
        
        return button
    }()
    
    
    let colors: [UIColor] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        view.addSubview(imageView)
        
        imageView.frame = CGRect(x: 0, y: 0, width: 500, height: 630)
        
        imageView.center=view.center
        
        view.addSubview(button)
        button.frame = CGRect(x: 65, y: 750, width: 270, height: 50)
        //button.center=view.center
        getRandomPhoto()
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    @objc func didTapButton() {
        getRandomPhoto()
    }
    
    
    func getRandomPhoto() {
        let urlString = "https://source.unsplash.com/random/500x600"
        let url = URL(string: urlString)!
        guard let data = try? Data(contentsOf: url) else {
            return
        }
        imageView.image = UIImage(data: data)
    }
    

 
}

  
