//
//  ViewController.swift
//  Checklist
//
//  Created by MacStudent on 2019-11-01.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {
    
    var items: [ChecklistItem]
    
    
    var row0item: ChecklistItem
    var row1item: ChecklistItem
    var row2item: ChecklistItem
    var row3item: ChecklistItem
    var row4item: ChecklistItem
    
    required init?(coder aDecoder: NSCoder) {
        
        
        
        items = [ChecklistItem]()
         row0item = ChecklistItem()
        row0item.text = "Walk the dog"
        row0item.checked = false
        items.append(row0item)
        // add this line
        // let
        // add this line
        
        
         row1item = ChecklistItem()
        row1item.text = "Brush my teeth"
        row1item.checked = true
        items.append(row1item)
         row2item = ChecklistItem()
        row2item.text = "Learn iOS development"
        row2item.checked = true
        items.append(row2item)
        row3item = ChecklistItem()
        row3item.text = "Soccer practice"
        row3item.checked = false
        items.append(row3item)
        row4item = ChecklistItem()
        row4item.text = "Eat ice cream"
        row4item.checked = true
        items.append(row4item)
        
        super.init(coder: aDecoder)
    }
    // let
    // add this line
    // let
    // add this line
    // let
    // add this line
    // let
    // add this line
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    //override func tableView(_ tableView: UITableView,
    //  numberOfRowsInSection section: Int) -> Int {
    //return 5
    
    //}
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath)
        -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(
                withIdentifier: "ChecklistItem",
                for: indexPath)
            
            let item = items[indexPath.row]       // Add this
            let label = cell.viewWithTag(1000) as! UILabel
            // Replace everything after the above line with the following
            label.text = item.text
            configureCheckmark(for: cell, at: indexPath)
            return cell
    }
    override func tableView(_ tableView: UITableView,
                           didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
           // Replace everything inside this `if` condition
            // with the following
           let item = items[indexPath.row]
           item.checked = !item.checked
           configureCheckmark(for: cell, at: indexPath)
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    // if let cell = tableView.cellForRow(at: indexPath) {
    
    // if indexPath.row == 0 {
    //label.text = row0item.text
    // } else if indexPath.row == 1 {
    //   label.text = row1item.text
    //  } else if indexPath.row == 2 {
    //     label.text = row2item.text
    //  } else if indexPath.row == 3 {
    //      label.text = row3item.text
    //  } else if indexPath.row == 4 {
    //     label.text = row4item.text
    // }
    // if indexPath.row == 0 {
    //   label.text = "Walk the dog"
    //} else if indexPath.row == 1 {
    // label.text = "Brush my teeth"
    // } else if indexPath.row == 2 {
    //   label.text = "Learn iOS development"
    // } else if indexPath.row == 3 {
    //     label.text = "Soccer practice"
    // } else if indexPath.row == 4 {
    //     label.text = "Eat ice cream"
    //   }
    
    //  var isChecked = false
    // if indexPath.row == 0 {
    //   row0item.checked = !row0item.checked
    // } else if indexPath.row == 1 {
    ///     row1item.checked = !row1item.checked
    //  } else if indexPath.row == 2 {
    //     row2item.checked = !row2item.checked//
    // } else if indexPath.row == 3 {
    //      row3item.checked = !row3item.checked
    //  } else if indexPath.row == 4 {//
    //     row4item.checked = !row4item.checked
    // }
    
    //if indexPath.row == 0 {
    //    isChecked = row0item.checked
    //  } else if indexPath.row == 1 {
    //      isChecked = row1item.checked
    //  } else if indexPath.row == 2 {
    //      isChecked = row2item.checked
    //  } else if indexPath.row == 3 {
    //      isChecked = row3item.checked
    // } else if indexPath.row == 4 {
    //    isChecked = row4item.checked
    // }
    //  tableView.deselectRow(at: indexPath, animated: true)
    
    
    // let label = cell.viewWithTag(1000) as! UILabel
    // if indexPath.row == 0 {
    //    label.text = row0text
    //} else if indexPath.row == 1 {
    //    label.text = row1text
    //} else if indexPath.row == 2 {
    //    label.text = row2text
    // } else if indexPath.row == 3 {
    //      label.text = row3text
    //  } else if indexPath.row == 4 {
    //     label.text = row4text
    // }
    // return cell }
    
    //override func tableView(_ tableView: UITableView,
    //      didSelectRowAt indexPath: IndexPath) {/
    // if let cell = tableView.cellForRow(at: indexPath) {
    //  let item = items[indexPath.row]
    //    item.checked = !item.checked
    //    configureCheckmark(for: cell, at: indexPath)
    //    }
    //   tableView.deselectRow(at: indexPath, animated: true)
    //  }
    func configureCheckmark(for cell: UITableViewCell,
                            at indexPath: IndexPath) {
        //var isChecked = false
        //if indexPath.row == 0 {
        //  isChecked = row0checked
        // } else if indexPath.row == 1 {
        //   isChecked = row1checked
        //  } else if indexPath.row == 2 {
        //     isChecked = row2checked
        //  } else if indexPath.row == 3 {
        //     isChecked = row3checked
        //  } else if indexPath.row == 4 {
        //     isChecked = row4checked
        //  }
        // if isChecked {
        //     cell.accessoryType = .checkmark
        //  } else {
        //     cell.accessoryType = .none
        // }
        // }
        let item = items[indexPath.row]
        if item.checked {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
    }
     @IBAction func addItem() {
        let newRowIndex = items.count
        let item = ChecklistItem()
        item.text = "I am a new row"
        item.checked = false
        items.append(item)
        let indexPath = IndexPath(row: newRowIndex, section: 0)
        let indexPaths = [indexPath]
        tableView.insertRows(at: indexPaths, with: .automatic)
    }
    
    
    class AddItemViewController: UITableViewController {
      override func viewDidLoad() {
        super.viewDidLoad()
      }
    }
   
}


