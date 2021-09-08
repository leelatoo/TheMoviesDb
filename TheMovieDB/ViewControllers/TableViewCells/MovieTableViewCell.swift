//
//  MovieTableViewCell.swift
//  TheMovieDB
//
//  Created by Leela Balasundaram on 9/7/21.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieDescription: UILabel!
    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var movieImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    var movie : Movie? {
        didSet {
            movieName.text = movie != nil ? String(movie!.title) : "Movie Title"
            movieDescription.text = movie != nil ? String(movie!.overview) : "Movie description"
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
