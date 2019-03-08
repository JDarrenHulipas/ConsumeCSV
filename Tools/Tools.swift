//
//  Tools.swift
//  ConsumeCSV
//
//  Created by John Darren on 06/03/2019.
//  Copyright © 2019 Nerrad Sapiluh. All rights reserved.
//

import Foundation

class Tools{
    
    func parseCSVBreed(cars: inout [WRCcar]) {
        
        //Obtengo el fichero y su tipo
        let path = Bundle.main.path(forResource: "WRCcar", ofType: "csv")!
        
        do{
            
            //Utilizo la librería para obtener la decodificación
            let csv = try CSV(contentsOfURL: path)
            
            //Recorro el fichero por filas y lo guardo en el array
            for row in csv.rows {
                cars.append(WRCcar(id: row["id"]!, name: row["name"]!, category: row["category"]!, brand: row["country"]!, image: row["image"]! != "" ? row["image"]! : "null"))
            }
            
        } catch let error as NSError {
            print("Error decodificando el CSV", error)
        }
        
    }
}
