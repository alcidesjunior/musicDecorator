//
//  ViewController.swift
//  MusicDecorator
//
//  Created by Alcides Junior on 04/11/18.
//  Copyright © 2018 Alcides Junior. All rights reserved.
//

import UIKit

class PlaygroundViewController: UIViewController {

    @IBOutlet weak var collectionArtists: UICollectionView!{
        didSet{
            self.collectionArtists.isPagingEnabled = true
        }
    }
    
    @IBOutlet weak var collectionShows: UICollectionView!
    
    @IBOutlet weak var collectionSetLists: UICollectionView!{
        didSet{
            self.collectionSetLists.allowsSelection = false
        }
    }
    var artists = [#imageLiteral(resourceName: "default"),#imageLiteral(resourceName: "default"),#imageLiteral(resourceName: "default"),#imageLiteral(resourceName: "default"),#imageLiteral(resourceName: "default"),#imageLiteral(resourceName: "default")]
    var shows = [StructShow.init(ForImageShow: #imageLiteral(resourceName: "showImage"), ForPlaceShow: "Concha acústica", ForDateShow: "10/11/2018"),StructShow.init(ForImageShow: #imageLiteral(resourceName: "showImage"), ForPlaceShow: "Pátio IFCE", ForDateShow: "15/11/2018"),StructShow.init(ForImageShow: #imageLiteral(resourceName: "showImage"), ForPlaceShow: "Reitoria", ForDateShow: "22/11/2018"),StructShow.init(ForImageShow: #imageLiteral(resourceName: "showImage"), ForPlaceShow: "Ex-alunos IFCE", ForDateShow: "12/12/2018")]
    var setLists = ["Pop das antiga","Forró","Raça negra","Barão Vermelho"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionArtists.delegate = self
        self.collectionArtists.dataSource = self
        self.collectionShows.delegate = self
        self.collectionShows.dataSource = self
        self.collectionSetLists.delegate = self
        self.collectionSetLists.dataSource = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }


}

extension PlaygroundViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == collectionArtists{
            return self.artists.count
        }else if collectionView == collectionSetLists{
            return self.setLists.count
        }else{
            return self.shows.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == collectionArtists{
            let cell = self.collectionArtists.dequeueReusableCell(withReuseIdentifier: "artistsCell", for: indexPath) as? ArtistsCollectionViewCell
            cell?.artistImage.image = artists[indexPath.item]
            cell?.artistImage.layer.cornerRadius = (cell?.artistImage.frame.height)!/2
            cell?.artistImage.layer.masksToBounds = false
            cell?.artistImage.clipsToBounds = true
            cell?.artistImage.layer.borderWidth = 4
            cell?.artistImage.layer.borderColor = #colorLiteral(red: 0.1602793634, green: 0.1644741595, blue: 0.1861864924, alpha: 1)
            
            return cell!
        }else if collectionView == collectionSetLists{
            let cell = self.collectionSetLists.dequeueReusableCell(withReuseIdentifier: "setListCell", for: indexPath) as? SetListsCollectionViewCell
            cell?.setListName.text = setLists[indexPath.item]
            cell?.backgroundColor = .random()
            
            
            cell?.layer.cornerRadius = 4
            cell?.layer.masksToBounds = false
            cell?.clipsToBounds = true
            cell?.layer.borderWidth = 1
            cell?.layer.borderColor = #colorLiteral(red: 0.1602793634, green: 0.1644741595, blue: 0.1861864924, alpha: 1)
            
            return cell!
        }else{
            let cell = self.collectionShows.dequeueReusableCell(withReuseIdentifier: "showsCell", for: indexPath) as? ShowsCollectionViewCell
            cell?.imageShow.image = shows[indexPath.item].imageShow
            cell?.placeShow.text = shows[indexPath.item].placeShow
            cell?.dateShow.text = shows[indexPath.item].dateShow
            
            cell?.imageShow.layer.cornerRadius = 2
            cell?.imageShow.layer.masksToBounds = false
            cell?.imageShow.clipsToBounds = true
            cell?.imageShow.layer.borderWidth = 2
            cell?.imageShow.layer.borderColor = #colorLiteral(red: 0.1529239416, green: 0.1529521346, blue: 0.1529177725, alpha: 1)
            
            return cell!
        }
    }
    
}

