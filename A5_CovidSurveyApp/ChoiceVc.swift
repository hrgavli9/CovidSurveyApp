//
//  ChoiceVc.swift
//  A5_CovidSurveyApp
//
//  Created by Dipak on 31/04/1943 Saka.
//

import UIKit

class ChoiceVc: UIViewController {

    
    private let myimgview:UIImageView = {
        let imgview=UIImageView()
        imgview.contentMode = .scaleAspectFill
        imgview.layer.cornerRadius = 10
//        imgview.alpha = 0
        imgview.clipsToBounds = true
        imgview.image = UIImage(named: "pic1")
        imgview.backgroundColor = .black
        return imgview
    }()
    
    private let tabbar:UISegmentedControl = {
        let segment = UISegmentedControl()
        segment.insertSegment(withTitle: "Survey", at: 0, animated: true)
        segment.insertSegment(withTitle: "Symptom", at: 1, animated: true)
        segment.selectedSegmentIndex = 0
        segment.addTarget(self, action: #selector(segmentfunc), for:.valueChanged)
        segment.backgroundColor = .cyan
        return segment
    }()
    @objc func segmentfunc() {
        print(tabbar.selectedSegmentIndex)
        if tabbar.selectedSegmentIndex == 1
        {
            navigationController?.pushViewController(SymtomsVc(), animated: true)
        }
        else
        {
            navigationController?.pushViewController(SurveyVc(), animated: true)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        view.addSubview(myimgview)
        view.addSubview(tabbar)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myimgview.frame = CGRect(x: 0, y: view.safeAreaInsets.top, width: view.width, height: view.height)
        tabbar.frame = CGRect(x: 10, y: 100, width: view.width-20, height: 100)
        
    }

}
