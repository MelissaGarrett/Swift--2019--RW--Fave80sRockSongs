import UIKit

let song1 = Song(songTitle: "Photograph", artist: "Def Leppard", albumName: "Pyromania")
let song2 = Song(songTitle: "We Belong", artist: "Pat Benatar", albumName: "Tropico")
let song3 = Song(songTitle: "We Built This City", artist: "Starship", albumName: "Knee Deep in the Hoopla")
let song4 = Song(songTitle: "Personal Jesus", artist: "Depeche Mode", albumName: "Violator")
let song5 = Song(songTitle: "More Than a Feeling", artist: "Boston", albumName: "Boston")

let allSongs = [ song1, song2, song3, song4, song5 ]

do {
    let songsURL = URL(fileURLWithPath: "rockSongs", relativeTo: FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0])
    .appendingPathExtension("json")
    
    let jsonEncoder = JSONEncoder()
    jsonEncoder.outputFormatting = .prettyPrinted
    let jsonData = try jsonEncoder.encode(allSongs)
    try jsonData.write(to: songsURL)
} catch {
    print(error)
}

