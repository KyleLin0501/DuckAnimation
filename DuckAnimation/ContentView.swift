//
//  ContentView.swift
//  DuckAnimation
//
//  Created by 林楷祐 on 2023/12/17.
//

import SwiftUI

var images: [UIImage] =
[
    UIImage(named: "image0")!,
    UIImage(named: "image1")!,
    UIImage(named: "image2")!,
    UIImage(named: "image3")!,
    UIImage(named: "image4")!,
    UIImage(named: "image5")!,
    UIImage(named: "image6")!,
    UIImage(named: "image7")!,
    UIImage(named: "image8")!,
    UIImage(named: "image9")!,
    UIImage(named: "image10")!,
    UIImage(named: "image11")!,
    UIImage(named: "image12")!,
    UIImage(named: "image13")!,
    UIImage(named: "image14")!
]

struct ContentView: View {
    @State var changeColor: Bool = false
    var body: some View {
        ZStack {
            Color(UIColor(changeColor ? Color.yellow : Color.blue))                 //背景設計
                .animation(Animation.easeInOut(duration: 1).repeatForever())        //動畫設計
                .onAppear(){                //出現時執行
                    self.changeColor.toggle()
                }
            AnimationForDuck()
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct AnimationForDuck: UIViewRepresentable {
    func makeUIView(context: Context) -> UIImageView {
        let seqImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))      //  建立一個UIImageView
        seqImage.contentMode = UIView.ContentMode.scaleAspectFit                //確保View是等比例縮放
        seqImage.image = UIImage.animatedImage(with: images, duration: 0.5)     //seqImage 加入圖片動畫效果
        return seqImage
    }
    func updateUIView(_ uiView: UIViewType, context: UIViewRepresentableContext<AnimationForDuck>) {
        
    }
}

   
