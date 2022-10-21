//
//  ViewController.swift
//  CollectionViewExample
//
//  Created by DDUKK7 on 19/10/22.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    var arr = ["harvi","Anu Shah","siri","harvi","Anu Shah","siri"]
    
   
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "playerCell", for: indexPath) as! MyCollectionViewCell
        
        //cell.colorName?.text = arr[indexPath.row]
       
       // cell.playerImage.image = UIImage(named: arr[indexPath.row])
        cell.playerImage.image = UIImage(named: arr[indexPath.row])
        return cell
    }
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.dataSource = self
        collectionView.delegate = self
        
        let layout = UICollectionViewFlowLayout()
        collectionView.collectionViewLayout = layout
        let nib = UINib(nibName: "MyCollectionViewCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "playerCell")
        
        
        
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200.0, height: 200.0)
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    
}

