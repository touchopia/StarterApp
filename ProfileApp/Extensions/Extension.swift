//
//  Extension.swift
//
//
//  Created by Phil Wright on 4/13/25.
//

import UIKit

extension Int {
    /// Get display formatted time from number of seconds
    /// E.g. 65s = 01:05
    ///
    /// - Returns: the display string
    func formattedTime() -> String {
        let seconds: Int = self % 60
        let minutes: Int = self / 60
        return String(format: "%02d:%02d", minutes, seconds)
    }
}

// MARK: - UIColor

extension UIColor {
    static var random: UIColor {
        return .init(hue: .random(in: 0...1), saturation: 1, brightness: 1, alpha: 1)
    }
}

// MARK: - UIImageView

public extension UIImageView {
    /// Load image from a url
    func imageFromUrl(url: URL) {
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let data = data {
                DispatchQueue.main.async {
                    self.image = UIImage(data: data)
                }
            } else {
                print("\(error.debugDescription)")
            }
        }.resume()
    }
}
