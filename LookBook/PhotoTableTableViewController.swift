//
//  PhotoTableTableViewController.swift
//  LookBook
//
//  Created by Apple on 8/1/19.
//  Copyright © 2019 KWK. All rights reserved.
//

import UIKit

class PhotoTableTableViewController: UITableViewController {
    
    var photos : [Photos] = []

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func getPhotos() {
       if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            if let coreDataPhotos = try? context.fetch(Photos.fetchRequest()) as? [Photos] {
            photos = coreDataPhotos
            tableView.reloadData()
            }
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        getPhotos()
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return photos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = UITableViewCell()
        cell.textLabel?.text = "Personal Closet"
        cell.imageView?.image = UIImage(named : "closet")

        return cell
    }
 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "detailSegue", sender: photos[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailsegue" {
            if let photoDetail = segue.destination as? PhotoDetailViewController {
                if let photoToSend = sender as? Photos {
                    photoDetail.photo = photoToSend
                }
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
        
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
                let photoToDelete = photos [indexPath.row]
                context.delete(photoToDelete)
                (UIApplication.shared.delegate as? AppDelegate)?.saveContext(); getPhotos()
            }
        }
    }
    
    

}
