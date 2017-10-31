//
//  ViewController.swift
//  tableExercise
//
//  Created by C4Q on 10/31/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var movies = MovieData.movies
    
    //Table View Outlet
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
//        loadData()
    }
    
//    func loadData() {
//    self.movies = MovieData.movies
//    }
    
    //Two Required Methods
    
    //Rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    //Cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Movie Cell", for: indexPath) as! MovieTableViewCell
        let rowToSetUp = indexPath.row
        let movieToSetUp = movies[rowToSetUp]
        cell.titleLabel.text = movieToSetUp.name
        cell.descriptionLabel.text = movieToSetUp.description
        cell.movieImage.image = UIImage(named: movieToSetUp.posterImageName)
        
        return cell
    }
    
    
}

