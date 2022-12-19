//
//  HourlyCollectionViewCell.swift
//  WeatherApp_Final
//
//

import UIKit

class HourlyCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var hourLabel: UILabel!
    @IBOutlet weak var hourlyIcon: UIImageView!
    @IBOutlet weak var hourlyTemperature: UILabel!
    
    var hourlyWeather: HourlyWeather! {
        didSet{
            hourLabel.text = hourlyWeather.hour
            hourlyIcon.image = UIImage(systemName: hourlyWeather.hourlyIcon)?.withRenderingMode(.alwaysOriginal)
            hourlyTemperature.text = "\(hourlyWeather.hourlyTemperature)°"
            
        }
    }
}
