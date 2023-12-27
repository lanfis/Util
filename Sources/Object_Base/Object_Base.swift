//
//  Object_Base.swift
//
//
//  Created by 羅文霖 on 2023/12/27.
//

import Foundation
import os


class Object_Base {
    
    private let _logger: Logger
    
    private let info : [String : String] = [
        "version" : "1.0",
        "system_name" : "Object_Base",
        "program_name" : "Object_Base"
    ]
    
    public var configs: [String : String] = [
        "root_path" : NSHomeDirectory(),
    ]
    
    
    
    
    init (configs_new : [String : String] = [:]) {
        self.configs.merge(configs_new) { current, new in
            new
        }
        
        if info.keys.contains("system_name") && info.keys.contains("program_name") {
            self._logger = Logger(subsystem: info["system_name"]!, category: info["program_name"]!)
        }
        else {
            self._logger = Logger()
        }
    }
}
