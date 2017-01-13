//
//  ViewController.swift
//  swift_FileManager
//
//  Created by darkwing90s on 16/9/3.
//  Copyright © 2016年 www.devpeng.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let myDirectory:String = NSHomeDirectory() + "/Documents/myFolder/Files"
    let fileManager = NSFileManager.defaultManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //在文档目录下新建folder目录
        let manager = NSFileManager.defaultManager()
        let urlForDocument = manager.URLsForDirectory( NSSearchPathDirectory.DocumentDirectory, inDomains:NSSearchPathDomainMask.UserDomainMask)
        let url = urlForDocument[0] as NSURL
        createAlbumFinder("folder", baseUrl: url)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //创建相册文件夹
    func createAlbumFinder(name:String,baseUrl:NSURL){
        let manager = NSFileManager.defaultManager()
        let folder = baseUrl.URLByAppendingPathComponent(name,isDirectory: true)
        print("文件夹:\(folder)")
        let exist = manager.fileExistsAtPath(folder.path!)
        if !exist {
            try! manager.createDirectoryAtURL(folder, withIntermediateDirectories: true, attributes: nil)
        }
    }
    
    //删除相册文件夹
    func deleteAlbumFinder(){
    
    }
    
    //保存图片去相册
    func saveImageToAlbum(){
    
    }
    
    //删除相册里面的图片
    func deleteImageFromAlbum(){
    
    }
}

