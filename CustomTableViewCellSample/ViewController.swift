//
//  ViewController.swift
//  CustomTableViewCellSample
//
//  Created by 张楚昭 on 16/5/21.
//  Copyright © 2016年 tianxing. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    //球队
    var listTeams:NSArray!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let plistPath = NSBundle.mainBundle().pathForResource("team", ofType: "plist")
        //获取球队数据
        self.listTeams = NSArray(contentsOfFile: plistPath!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //为表视图单元格提供数据
    override func tableView(tableView:UITableView, cellForRowAtIndexPath indexPath:NSIndexPath) -> UITableViewCell{
        let cellIdentifier = "CustomCell"
        var cell:CustomCell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! CustomCell
        
        let row = indexPath.row
        let rowDict = self.listTeams[row] as! NSDictionary
        
        cell.myLabel.text = rowDict["name"] as! String
        let imageFile = rowDict["image"] as! String
        let imagePath = NSString(format: "%@.png", imageFile) as String
        cell.myImageView.image = UIImage(named: imagePath)
        
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        return cell
    }
    
    //返回某个节中的行数
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.listTeams.count
    }

}

