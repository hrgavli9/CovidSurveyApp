//
//  ViewController.swift
//  A5_CovidSurveyApp
//
//  Created by Dipak on 30/04/1943 Saka.
//

import UIKit

class ViewController: UIViewController {

    private let myimgview:UIImageView = {
        let imgview=UIImageView()
        imgview.contentMode = .scaleAspectFill
        imgview.layer.cornerRadius = 10
//        imgview.alpha = 0
        imgview.clipsToBounds = true
        imgview.image = UIImage(named: "logo1")
      
        imgview.backgroundColor = .black
        return imgview
    }()
    
    private let mylabel:UILabel = {
        let lb=UILabel()
        lb.text="Covid"
//        lb.font = .monospacedDigitSystemFont(ofSize: 100, weight: .bold)
        lb.font = .italicSystemFont(ofSize: 80)
        lb.backgroundColor = .clear
        lb.textColor = .orange
        lb.textAlignment = .left
        return lb
    }()
    
    private let myrightarrow:UIImageView = {
        let imgview=UIImageView()
        imgview.contentMode = .scaleAspectFill
        imgview.layer.cornerRadius = 10
//        imgview.alpha = 0
        imgview.clipsToBounds = true
        imgview.image = UIImage(named: "rightarrow")
        
        imgview.backgroundColor = .black
        return imgview
    }()
    
    private let mylabel1:UILabel = {
        let lb=UILabel()
        lb.text="Survey"
        lb.font = .italicSystemFont(ofSize: 80)
//        lb.font = .boldSystemFont(ofSize: 50)
        lb.backgroundColor = .clear
        lb.textColor = .orange
        lb.textAlignment = .right
        return lb
    }()
    
    private let myButton:UIButton = {
        let btn = UIButton()
        btn.setTitle(">>>>>", for: .normal)
        btn.addTarget(self, action: #selector(btnfunc), for: .touchUpInside)
        btn.backgroundColor = .orange
//        btn.titleColor(for: .normal)
        btn.layer.cornerRadius = 30
        return btn
    }()
    @objc func btnfunc() {
        navigationController?.pushViewController(Register1Vc(), animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(myimgview)
        view.addSubview(mylabel)
        view.addSubview(mylabel1)
        view.addSubview(myrightarrow)
        view.addSubview(myButton)
       
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myimgview.frame = CGRect(x: 0, y:view.safeAreaInsets.top+10, width: view.width, height: view.height-view.safeAreaInsets.top-view.safeAreaInsets.bottom-50)
        mylabel.frame = CGRect(x: 20, y: 80, width: view.width-20, height: 100)
        myrightarrow.frame = CGRect(x: mylabel.right+20, y: 80, width: 50, height: 100)
        mylabel1.frame = CGRect(x: 20, y: mylabel.bottom+450, width: view.width-20, height: 150)
        myButton.frame = CGRect(x: mylabel1.left, y: mylabel.bottom+500, width: 100, height: 100-view.safeAreaInsets.bottom)
    }


}

