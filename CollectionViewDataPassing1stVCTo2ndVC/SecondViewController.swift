//
//  SecondViewController.swift
//  CollectionViewDataPassing1stVCTo2ndVC
//
//  Created by mac on 1/22/24.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var myImgHome: UIImageView!
    
    @IBOutlet weak var myLblHome: UILabel!
    
    @IBOutlet weak var myLbl2Home: UILabel!
    
    var passedData = WebSeries()
    override func viewDidLoad() {
        super.viewDidLoad()
        myImgHome.image = UIImage(named: passedData.webSeriesImage)
        myLblHome.text = passedData.webSeiesName
        myLbl2Home.text = passedData.webSeriesDesc
    }
    

   

}
