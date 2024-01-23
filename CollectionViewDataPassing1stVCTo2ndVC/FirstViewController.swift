//
//  FirstViewController.swift
//  CollectionViewDataPassing1stVCTo2ndVC
//
//  Created by mac on 1/22/24.
//

import UIKit

class FirstViewController: UIViewController {
    
    var wWebSeries = [WebSeries]()

    @IBOutlet weak var myCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fillData()
        myCollectionView.delegate = self
        myCollectionView.dataSource = self

    }
    
    private func fillData(){
        let webSeries1 = WebSeries(sName: "Salaar", sImage: "salaarImg.jpeg", sDesc: "Directed by Prashanth Neel, 'Salaar Part 1: Ceasefire' starr ..Read more at:http://timesofindia.indiatimes.com/articleshow/106979889.cms?from=mdr&utm_source=contentofinterest&utm_medium=text&utm_campaign=cppst")
        wWebSeries.append(webSeries1)
        let webSeries2 = WebSeries(sName: "Salaar2", sImage: "salaarImg.jpeg", sDesc: "Directed by Prashanth Neel, 'Salaar Part 1: Ceasefire' starr ..Read more at:http://timesofindia.indiatimes.com/articleshow/106979889.cms?from=mdr&utm_source=contentofinterest&utm_medium=text&utm_campaign=cppst")
        wWebSeries.append(webSeries2)
        let webSeries3 = WebSeries(sName: "Salaar2", sImage: "salaarImg.jpeg", sDesc: "Directed by Prashanth Neel, 'Salaar Part 1: Ceasefire' starr ..Read more at:http://timesofindia.indiatimes.com/articleshow/106979889.cms?from=mdr&utm_source=contentofinterest&utm_medium=text&utm_campaign=cppst")
        wWebSeries.append(webSeries3)
        let webSeries4 = WebSeries(sName: "Salaar2", sImage: "salaarImg.jpeg", sDesc: "Directed by Prashanth Neel, 'Salaar Part 1: Ceasefire' starr ..Read more at:http://timesofindia.indiatimes.com/articleshow/106979889.cms?from=mdr&utm_source=contentofinterest&utm_medium=text&utm_campaign=cppst")
        wWebSeries.append(webSeries4)
        let webSeries5 = WebSeries(sName: "Salaar2", sImage: "salaarImg.jpeg", sDesc: "Directed by Prashanth Neel, 'Salaar Part 1: Ceasefire' starr ..Read more at:http://timesofindia.indiatimes.com/articleshow/106979889.cms?from=mdr&utm_source=contentofinterest&utm_medium=text&utm_campaign=cppst")
        wWebSeries.append(webSeries4)
        let webSeries6 = WebSeries(sName: "Salaar2", sImage: "salaarImg.jpeg", sDesc: "Directed by Prashanth Neel, 'Salaar Part 1: Ceasefire' starr ..Read more at:http://timesofindia.indiatimes.com/articleshow/106979889.cms?from=mdr&utm_source=contentofinterest&utm_medium=text&utm_campaign=cppst")
        wWebSeries.append(webSeries6)
        let webSeries7 = WebSeries(sName: "Salaar2", sImage: "salaarImg.jpeg", sDesc: "Directed by Prashanth Neel, 'Salaar Part 1: Ceasefire' starr ..Read more at:http://timesofindia.indiatimes.com/articleshow/106979889.cms?from=mdr&utm_source=contentofinterest&utm_medium=text&utm_campaign=cppst")
        wWebSeries.append(webSeries7)
        let webSeries8 = WebSeries(sName: "Salaar2", sImage: "salaarImg.jpeg", sDesc: "Directed by Prashanth Neel, 'Salaar Part 1: Ceasefire' starr ..Read more at:http://timesofindia.indiatimes.com/articleshow/106979889.cms?from=mdr&utm_source=contentofinterest&utm_medium=text&utm_campaign=cppst")
        wWebSeries.append(webSeries8)
        let webSeries9 = WebSeries(sName: "Salaar2", sImage: "salaarImg.jpeg", sDesc: "Directed by Prashanth Neel, 'Salaar Part 1: Ceasefire' starr ..Read more at:http://timesofindia.indiatimes.com/articleshow/106979889.cms?from=mdr&utm_source=contentofinterest&utm_medium=text&utm_campaign=cppst")
        wWebSeries.append(webSeries9)
        let webSeries10 = WebSeries(sName: "Salaar2", sImage: "salaarImg.jpeg", sDesc: "Directed by Prashanth Neel, 'Salaar Part 1: Ceasefire' starr ..Read more at:http://timesofindia.indiatimes.com/articleshow/106979889.cms?from=mdr&utm_source=contentofinterest&utm_medium=text&utm_campaign=cppst")
        wWebSeries.append(webSeries10)
    }
    

    

}

extension FirstViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return wWebSeries.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionViewCell
        cell.myImg.image = UIImage(named: wWebSeries[indexPath.row].webSeriesImage)
//        cell.myImg.layer.cornerRadius = cell.frame.size.height/2
        cell.myImg.layer.cornerRadius = cell.frame.size.height/5
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        secondViewController.passedData = wWebSeries[indexPath.row]
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (myCollectionView.frame.size.width - 30)/1
        return CGSize(width: size, height: size)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    
    
    
    
}
