//
//  ViewController.swift
//  HellaCollectionCells
//
//  Created by Flatiron School on 10/6/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
//    var fibonnaciNumbersArray: [Int] = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987]
    func fiboArray () -> [Int] {
        var array = [0,1]
        
        for i in 0...15 {
            let fiboNumber = array[array.count - 2] + array[array.count - 1]
            array.append(fiboNumber)
        }
        return array
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Collection View DataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1000
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath)
        
        var number = indexPath.item
            if fiboArray().contains(indexPath.item) {
                cell.backgroundColor = UIColor.purple
            } else {
                cell.backgroundColor = UIColor.yellow
            }
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueDetailView" {
            print(1)
            if let dest = segue.destination as? HellaDetailViewController,
                let arrayIndex = collectionView.indexPathsForSelectedItems {
                print(2)
                dest.numbersText = String(arrayIndex[0].item)
            }
        }
    }
    
    
    
}

