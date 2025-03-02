//
//  travelxpApp.swift
//  travelxp
//
//  Created by Prachi Bharadwaj on 02/03/25.
//

import SwiftUI

@main
struct travelxpApp: App {
    var body: some Scene {
        WindowGroup {
            let sampleVideo = Video(
                title: "Big Buck Bunny",
                episode: "Episode 1",
                description: "An animated short film featuring a giant rabbit with a heart of gold who takes a stand against a trio of bullying rodents.",
                videoURL: URL(string: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")!,
                thumbnail: "thumbnail.jpg"
            )
            PlayerView(video: sampleVideo)
        }
    }
}
