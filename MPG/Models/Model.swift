//
//  Model.swift
//  MPG
//
//  Created by Masaie on 20/7/22.
//

struct Model {
    
    let litres: Double
    let km: Double
    var result: Double
    
    var viewer: Viewer
    
    init(viewer: Viewer) {
        self.viewer = viewer
        litres = 0
        km = 0
        result = 0
    }
    
    mutating func doAction(litres: String, km: String) {
        result = (Double(litres)! / Double(km)!) * 100
        let stringResult = String(result)

        var finishesAnswer = ""
        var stack = ""
        let comma = ","

        for i in stringResult {
            if i != "." && stack.count < 5 {
                stack.append(i)
            } else if i == "." {
                stack.append(comma)
            }
            finishesAnswer = stack
        }
        viewer.update(result: String(finishesAnswer))
    }
}
