

import UIKit


public class Razecore {
    
    /// command + option + /
    /// - Parameters:
    ///   - hexString: <#hexString description#>
    ///   - alpha: <#alpha description#>
    /// - Returns: <#description#>
   internal class func colorFromHexString(_ hexString:String, alpha:CGFloat = 1.0) -> UIColor {
        let r, g, b :CGFloat
        let offset = hexString.hasPrefix("#") ? 1: 0
        let start = hexString.index(hexString.startIndex, offsetBy: offset)
        let hexColor = String(hexString[start...])
        let scanner = Scanner(string: hexColor)
        var hexNumber:UInt64 = 0
        if scanner.scanHexInt64(&hexNumber) {
            r = CGFloat((hexNumber & 0xff0000) >> 16) / 255
            g = CGFloat((hexNumber & 0xff0000) >> 8) / 255
            b = CGFloat(hexNumber & 0xff0000) / 255
            return UIColor(red: r, green: g, blue: b, alpha: alpha)
        }
        return UIColor(red: 0, green:0, blue: 0, alpha: alpha)
    }
    
    
    /// mankind beautiful color ever
    public static var razeColor:UIColor {
        return self.colorFromHexString("006736")
    }
}
