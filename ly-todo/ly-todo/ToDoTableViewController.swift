//
//  ToDoTableViewController.swift
//  ly-todo/Users/leeyoung_song/Documents/ly-todo/ly-todo/ly-todo/ToDoTableViewController.swift
//
//  Created by Leeyoung Song on 2020/01/28.
//  Copyright © 2020 Leeyoung Song. All rights reserved.
//
/*
 push :  값을 넣는다
 
 pop : 값을 뺀다

 
 첫화면 테이블 뷰 컨 > 에디터 뷰 컨
 
 */
import UIKit

class ToDoTableViewController: UITableViewController {
    @IBAction func didTapBringCheckBoxBtn(_ sender: UIButton)
    {
        sender.isSelected = !sender.isSelected
    }
    @IBOutlet weak var add_btn: UIBarButtonItem!
    
    @IBAction func addNewTodo(_ sender: Any) {
        //self.prepare(for: "", sender: nil)
        //self.navigationController?.pushViewController(<#T##viewController: UIViewController##UIViewController#>, animated: <#T##Bool#>)
    }
    var toDos : [[String : Any]] = []

    override func viewDidLoad() {
        super.viewDidLoad()

//        let toDo1 = ToDo()
//        toDo1.name = "Set up a recurring meeting with Mati"
//        toDo1.done = true
//
//        let toDo2 = ToDo()
//        toDo2.name = "1:1 with Clay"
//        toDo2.done = false
        
//        toDos = [toDo1, toDo2]
        let document = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as NSString;
        let path = document.appending("/todo.plist");
        //let path = Bundle.main.path(forResource: "todo", ofType: "plist")
        let somedata = NSDictionary(contentsOfFile: path)
        let root_dic = somedata as? [String: Any]
        //toDos = (root_dic?["data"] as? [[String:Any]])!
        for item in (root_dic?["data"] as? [[String:Any]])! {
            toDos.append(item)
        }
    }
    
    // data save
    func dataSave() -> Void {
        var paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as String
        var path = paths.appending("todo.plist")
        var fileManager = FileManager.default
        if (!(fileManager.fileExists(atPath:path)))
        {
            var bundle : NSString = (Bundle.main.path(forResource: "data", ofType: "plist") as? NSString)!
            fileManager.copyItemAtPath(bundle, toPath: path, error:nil)
        }
        root_dic.setObject(toDos, forKey: "data")
        data.writeToFile(path, atomically: true)
    }
    
    // data 수정
    func dataUpdate(input_str:String, index:Int) -> Void {
        if index < toDos.count {
            var temp = toDos[index]
            temp["name"] = input_str
            temp["day"] = Date()
            toDos[index] = temp
        } else {
            print("error")
        }
        // data save
        
    }
    
    // 데이터 삭제
    func dataDelete(input_str:String, index:Int) -> Void {
        if index < toDos.count {
            var temp = toDos[index]
            temp["deleted"] = true
            temp["day"] = Date()
            toDos[index] = temp
        } else {
            print("error")
        }
        // data save
    }
    
    func dataDone(input_str:String, index:Int) -> Void {
        if index < toDos.count {
            var temp = toDos[index]
            temp["done"] = true
            temp["day"] = Date()
            toDos[index] = temp
        } else {
            print("error")
        }
        // data save
    }
    
    
    // 입력시 생성
    
    func dataInit(input_str:String) -> Void {
        //let index = toDos.count
        var temp:[String:Any] = [:]
        temp["name"] = input_str
        temp["deleted"] = false
        temp["done"] = false
        temp["day"] = Date()
        
        toDos.append(temp)
        // data save
    }
//*
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDos.count + 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell") as? TaskCell ?? TaskCell()
       
        if indexPath.row < toDos.count {
            let toDo = toDos[indexPath.row]
            cell.toDoText?.text = toDo["name"] as? String
        } else {
            cell.toDoText?.text = ""
        }
        

        return cell
    }
 //*/
}
