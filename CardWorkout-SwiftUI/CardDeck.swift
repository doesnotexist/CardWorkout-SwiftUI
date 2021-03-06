//
//  Card.swift
//  CardWorkout-SwiftUI
//
import SwiftUI

struct CardDeck {
    static let shortNames = [
        "2H",
        "3H",
        "4H",
        "5H",
        "6H",
        "7H",
        "8H",
        "9H",
        "10H",
        "JH",
        "QH",
        "KH",
        "AH",
        "2S",
        "3S",
        "4S",
        "5S",
        "6S",
        "7S",
        "8S",
        "9S",
        "JS",
        "10S",
        "QS",
        "KS",
        "AS",
        "2C",
        "3C",
        "4C",
        "5C",
        "6C",
        "7C",
        "8C",
        "9C",
        "10C",
        "JC",
        "QC",
        "KC",
        "AC",
        "2D",
        "3D",
        "4D",
        "5D",
        "6D",
        "7D",
        "8D",
        "9D",
        "10D",
        "JD",
        "QD",
        "KD",
        "AD"
    ]
    // Experiment with static dictionary to images:
    //    -- Result: no memory or performance gain
    // static let images = shortNames.reduce([String: UIImage]()) {
    //    (dict, shortName) -> [String : UIImage] in
    //    var dict = dict
    //    dict[shortName] = UIImage(named: shortName)
    //    return dict
    //}
}
