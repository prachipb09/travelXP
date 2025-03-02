//
//  Video.swift
//  travelxp
//
//  Created by Prachi Bharadwaj on 02/03/25.
//

import Foundation
    // MARK: - Model
struct Video: Identifiable {
    let id = UUID()
    let title: String
    let episode: String
    let description: String
    let videoURL: URL
    let thumbnail: String
}
