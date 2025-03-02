//
//  PlayerViewModel.swift
//  travelxp
//
//  Created by Prachi Bharadwaj on 02/03/25.
//

import SwiftUI
    // MARK: - ViewModel
class PlayerViewModel: ObservableObject {
    @Published var isPlaying = false
    @Published var showSubtitles = false
    @Published var currentTime: Double = 0.0
    @Published var duration: Double = 0.0
    
    let video: Video
    
    init(video: Video) {
        self.video = video
    }
}
