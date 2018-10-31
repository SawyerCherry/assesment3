//
//  ViewController.swift
//  Assesment 3 iOS
//
//  Created by Sawyer Cherry on 10/26/18.
//  Copyright © 2018 Sawyer Cherry. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
  
    
    var people: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        people = [Person(name: "Sawyer", favoriteThing: "Guitars", favoriteColor: UIColor.orange), Person(name: "Chance", favoriteThing: "Diesel Trucks", favoriteColor: UIColor.blue), Person(name: "Sterlin", favoriteThing: "Fortnite", favoriteColor: UIColor.green)]
        }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // returns the people
        return people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell") as! PersonTableViewCell
        
        let currentPerson = people[indexPath.row]
        
        cell.nameLabel.text = currentPerson.name
        cell.favoriteThingLabel.text = currentPerson.favoriteThing
        cell.backgroundColor = currentPerson.favoriteColor
        
        return cell
    }
    
}

