//
//  MoviesViewModel.swift
//  TheMovieDB
//
//  Created by Leela Balasundaram on 9/7/21.
//

import Foundation

class MoviesViewModel : NSObject {
    
    private var moviesService : MovieService!
    private(set) var moviesData : Movies! {
        didSet {
            self.bindMoviesViewModelToController()
        }
    }
    
    var bindMoviesViewModelToController : (() -> ()) = {}
    
    override init() {
        super.init()
        self.moviesService =  MovieService()
        callFuncToGetEmpData()
    }
    
    func callFuncToGetEmpData() {
        self.moviesService.GetMovieData{ (moviesData) in
            self.moviesData = moviesData
        }
    }
}
