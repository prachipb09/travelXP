import SwiftUI
import AVKit

    // MARK: - View
struct PlayerView: View {
    @StateObject private var viewModel: PlayerViewModel
    @State private var player: AVPlayer?
    @State private var isLandscape = UIDevice.current.orientation.isLandscape
    
    init(video: Video) {
        _viewModel = StateObject(wrappedValue: PlayerViewModel(video: video))
    }
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                if let player = player {
                    VideoPlayer(player: player)
                        .frame(maxWidth: .infinity, maxHeight: isLandscape ? UIScreen.main.bounds.height : 400)
                        .cornerRadius(isLandscape ? 0 : 12)
                        .shadow(radius: isLandscape ? 0 : 10)
                        .onAppear {
                            NotificationCenter.default.addObserver(forName: UIDevice.orientationDidChangeNotification, object: nil, queue: .main) { _ in
                                isLandscape = UIDevice.current.orientation.isLandscape
                            }
                        }
                } else {
                    ProgressView("Loading video...")
                        .foregroundColor(.white)
                        .frame(height: 400)
                }
                
                if !isLandscape {
                    VStack {
                        infoSection
                            .background(BlurView(style: .systemMaterialDark))
                            .cornerRadius(12)
                            .padding(.horizontal)
                            .shadow(radius: 10)
                            .padding(.vertical, 24)
                    }
                }
            }
        }
        .onAppear {
            loadVideo()
        }
    }
    
    private func loadVideo() {
        DispatchQueue.global().async {
            let player = AVPlayer(url: viewModel.video.videoURL)
            DispatchQueue.main.async {
                self.player = player
                player.play()
            }
        }
    }
    
    private var infoSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(viewModel.video.title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Text(viewModel.video.episode)
                .font(.headline)
                .foregroundColor(.gray)
            
            Text(viewModel.video.description)
                .font(.body)
                .foregroundColor(.white)
                .lineLimit(3)
        }
        .padding()
    }
}

    // MARK: - Blur View
struct BlurView: UIViewRepresentable {
    var style: UIBlurEffect.Style
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: style))
        return view
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {}
}

    // MARK: - Preview
struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
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
