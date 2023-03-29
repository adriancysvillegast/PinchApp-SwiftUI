//
//  InfoPanelView.swift
//  Pinch
//
//  Created by Adriancys Jesus Villegas Toro on 27/3/23.
//

import SwiftUI

struct InfoPanelView: View {
    
    // MARK: - properties
    
    var scale: CGFloat
    var offset: CGSize
    
    @State private var isInfoPanelVisile: Bool = false
    
    var body: some View {
        HStack {
            
            // MARK: - hotspot
            
            Image(systemName: "circle.circle")
                .symbolRenderingMode(.hierarchical)
                .resizable()
                .frame(width: 30, height: 30)
                .onLongPressGesture(minimumDuration: 1) {
                    withAnimation(.easeOut) {
                        isInfoPanelVisile.toggle()
                    }
                }
            
            Spacer()
            
            // MARK: - info panel
            HStack(spacing: 2) {
                Image(systemName: "arrow.up.left.and.arrow.down.right")
                    Text("\(scale)")
                
                Spacer()
                
                Image(systemName: "arrow.left.and.right")
                Text("\(offset.width)")
                
                Spacer()
                
                Image(systemName: "arrow.up.and.down")
                Text("\(offset.height)")
                
                Spacer()
            }
            .font(.footnote)
            .padding(8)
            .background(.ultraThinMaterial)
            .cornerRadius(8)
            .frame(maxWidth: 420)
            .opacity(isInfoPanelVisile ? 1 : 0)
            
            Spacer()
            
        }
    }
}

struct InfoPanelView_Previews: PreviewProvider {
    static var previews: some View {
        InfoPanelView(scale: 1, offset: .zero)
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
