//
//  File_Handler_Base.swift
//  POS
//
//  Created by Lawrence on 2023/12/26.
//

import Foundation
import Object_Base

class File_Handler_Base: Object_Base {
    
    let info : [String : String] = [
        "version" : "1.0"
    ]
    var configs: [String : String] = [
        "root_path" : NSHomeDirectory(),
        "document_path" : "/Documents",
        "cache_path" : "/Library/Caches",
        "tmp_path" : "/tmp",
    ]
    var path_urls: [String : URL] = [:]
    
    public func list_directory (path: String) -> [String] {
        do {
            var list: [String] = try FileManager.default.contentsOfDirectory(atPath: path)
            return list
        } catch {
            return []
        }
    }
    
    public func is_exist (path: String) -> Bool {
        var is_directory: ObjCBool = false
        let is_file = FileManager.default.fileExists(atPath: path, isDirectory: &is_directory)
        return is_file || is_directory.boolValue
    }
    
    private func init_ () {
        self.path_urls["document_url"] = URL(fileURLWithPath: self.configs["root_path"]! + self.configs["document_path"]!)
        self.path_urls["cache_url"] = URL(fileURLWithPath: self.configs["root_path"]! + self.configs["cache_path"]!)
        self.path_urls["tmp_url"] = URL(fileURLWithPath: self.configs["root_path"]! + self.configs["tmp_path"]!)
    }
    init (configs_new : [String : String]) {
        self.configs.merge(configs_new) { current, new in
            new
        }
    }
    init () {
        init_()
    }
}
