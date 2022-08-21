//
//  ViewController.swift
//  Notification center
//
//  Created by kishore-pt5557 on 19/08/22.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("Click", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(btnTapped), for: .touchUpInside)
        return button
    }()
    
    @objc func btnTapped() {
        NotificationCenter.default.post(name: Notification.Name("Change background color"), object: nil)
        view.backgroundColor = .red
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        view.addSubview(button)
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
    }

}


class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        
    }
    
    @objc func notificationReceived() {
        view.backgroundColor = .red

    }

}


class ViewController3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        
    }
    
    @objc func notificationReceived() {
        view.backgroundColor = .red

    }
}
