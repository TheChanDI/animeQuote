//
//  ViewController.swift
//  animeQuote
//
//  Created by ENFINY INNOVATIONS on 9/16/21.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    lazy var imageLogo: UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "op")
        iv.contentMode = .scaleAspectFit
        return iv
    }()
    
    lazy var imageTitle: UILabel = {
        let label = UILabel()
        label.text = "One Piece"
        label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        
        return label
    }()
    
    lazy var toggleSwitch: UISwitch = {
        let sw = UISwitch()

        sw.preferredStyle = .checkbox
        sw.addTarget(self, action: #selector(switchToggled), for: .valueChanged)
        return sw
    }()
    
    @objc func switchToggled(mySwitch: UISwitch) {
    
        if mySwitch.isOn {
            view.overrideUserInterfaceStyle = .dark
        }
        else {
            view.overrideUserInterfaceStyle = .light
        }
        
    }
    
    
    
    //MARK:- Lifecycle method
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(named: "bgColor")
      
        setup()
    }
    
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        
        if traitCollection.userInterfaceStyle == .dark {
            toggleSwitch.isOn = true
            view.overrideUserInterfaceStyle = .dark
        }
        else {
            toggleSwitch.isOn = false
            view.overrideUserInterfaceStyle = .light
        }
        
    }
    
    
    private func setup() {
        configureSwitch()
        configureImageLogo()
        configureImageTitle()
    }
    
    
    
    
}

//MARK:- UI Design
extension ViewController {
    
    private func configureSwitch() {
        view.addSubview(toggleSwitch)
        toggleSwitch.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(100)
        }
    }
    
    private func configureImageLogo() {
        view.addSubview(imageLogo)
        imageLogo.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.height.equalTo(200)
            make.width.equalToSuperview()
        }
    }
    
    private func configureImageTitle() {
        view.addSubview(imageTitle)
        imageTitle.snp.makeConstraints { make in
            make.top.equalTo(imageLogo.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
        }
    }
}

