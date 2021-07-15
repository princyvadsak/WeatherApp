//
//  ViewController.swift
//  WeatherApp
//
//  Created by DCS on 15/07/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let welcome:UILabel = {
        let labl = UILabel()
        labl.text = "Welcome to WeatherApp"
        labl.font = UIFont(name: "Copperplate", size: 25.0)
        labl.textAlignment = .center
        labl.textColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        //labl.textColor = .init(red: 0.234, green: 0.289, blue: 0.294, alpha: 1)
        return labl
    }()
    
    
    private let myImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "weathericon2")
        return imageView
    }()
    
    
    private let login : UIButton = {
        let con = UIButton()
        
        con.setTitle("Go to Check Weather", for: .normal)
        con.addTarget(self, action: #selector(goto), for: .touchUpInside)
        // con.backgroundColor = .gray
        con.setTitleColor(.white, for: .normal)
        con.layer.cornerRadius = 25
        con.backgroundColor = #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)
       // con.backgroundColor = .init(red: 0.234, green: 0.289, blue: 0.294, alpha: 1)
        return con
        
        
    } ()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(welcome)
        view.addSubview(myImageView)
        view.addSubview(login)
        //view.backgroundColor = .init(red: 0.921, green: 0.941, blue: 0.953, alpha: 1)
        
        let bckimage = UIImageView(frame: UIScreen.main.bounds)
        bckimage.image = UIImage(named: "bg14.jpg")
        bckimage.contentMode = UIView.ContentMode.scaleToFill
        self.view.insertSubview(bckimage, at: 0)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        self.view.backgroundColor = .white
        welcome.frame = CGRect(x: 30, y:view.safeAreaInsets.top + 40,width: view.width - 60, height: 40)
        myImageView.frame = CGRect(x: 40, y:view.safeAreaInsets.top + 130, width: view.width - 80,height: 280)
        login.frame = CGRect(x: 30, y: myImageView.bottom + 60, width: view.width - 60, height: 40)
    }
    
    
    @objc func goto()
    {
        let vc = HomeVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
    
    
}
