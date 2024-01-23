//
//  FilmSeries.swift
//  CollectionViewDataPassing1stVCTo2ndVC
//
//  Created by mac on 1/22/24.
//

import Foundation

class WebSeries{
    var webSeiesName: String
    var webSeriesImage: String
    var webSeriesDesc: String
    
    init(sName: String, sImage: String, sDesc: String){
        webSeiesName = sName
        webSeriesImage = sImage
        webSeriesDesc = sDesc
    }
    init(){
        webSeiesName = ""
        webSeriesDesc = ""
        webSeriesImage = ""
    }
    
}
