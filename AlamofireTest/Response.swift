//
//  Response.swift
//  AlamofireTest
//
//  Created by Esraa Khaled   on 06/09/2022.
//

import Foundation
// MARK: - Welcome
struct Response: Codable {
    let results: MyResult
    let status: String
}

// MARK: - Results
struct MyResult: Codable {
    let sunrise, sunset, solarNoon, dayLength: String
    let civilTwilightBegin, civilTwilightEnd, nauticalTwilightBegin, nauticalTwilightEnd: String
    let astronomicalTwilightBegin, astronomicalTwilightEnd: String

    enum CodingKeys: String, CodingKey {
        case sunrise, sunset
        case solarNoon = "solar_noon"
        case dayLength = "day_length"
        case civilTwilightBegin = "civil_twilight_begin"
        case civilTwilightEnd = "civil_twilight_end"
        case nauticalTwilightBegin = "nautical_twilight_begin"
        case nauticalTwilightEnd = "nautical_twilight_end"
        case astronomicalTwilightBegin = "astronomical_twilight_begin"
        case astronomicalTwilightEnd = "astronomical_twilight_end"
    }
}
