//
//  Controller.swift
//  MPG
//
//  Created by Masaie on 20/7/22.
//

class Controller {
    
    var litres: String
    var km: String
    
    private var model: Model
    
    init(viewer: Viewer) {
        model = Model(viewer: viewer)
        litres = ""
        km = ""
    }
    
    func sendToModel() {
        model.doAction(litres: litres, km: km)
    }
}
