import Foundation
import FoundationNetworking
import SwiftShims

struct Board: Codable{
    var id: Int
}

let decoder = JSONDecoder()

var request = URLRequest(url: URL(string: "https://www.codermerlin.com/vapor/du-chen/games?difficulty=easy")!)
request.httpMethod = "POST"
let (data, response, error) = URLSession.shared.syncRequest(with: request)
var board : Board? = nil 
if let data = data,
   let string = String(data: data, encoding: .utf8) {
        print(string)
    guard let data  = string.data(using: .utf8),
          let potentialBoard = try? decoder.decode(Board.self, from: data) else {
        fatalError("Failed to decode json into board.")
        
    }
    board = potentialBoard
} else if let error = error {
    print("Error: \(error)")
} else {
    print("An unexpected error occurred.")
}
func getID() -> Int{
    return (board!.id)
    
}
print(getID())

//print(getID())



//get testing
// Structure definitions
    struct Position: Codable {
        var boxIndex: Int
        var cellIndex: Int
    }

    struct Cell: Codable {
        var position: Position
        var value: Int?
    }

    struct Box: Codable {
        var cells: [Cell]
    }

    struct Boardy: Codable {
         var board: [Box]
    }
    var boardy: Boardy? = nil 
func getTesting() {
    /*
    let json =
      #"""
      {"board":
        [{"cells":[{"position":{"boxIndex":0,"cellIndex":0},"value":0},{"position":{"boxIndex":0,"cellIndex":1},"value":1},
            {"position":{"boxIndex":0,"cellIndex":2},"value":2},{"position":{"boxIndex":0,"cellIndex":3},"value":3},
            {"position":{"boxIndex":0,"cellIndex":4},"value":4},{"position":{"boxIndex":0,"cellIndex":5},"value":5},
            {"position":{"boxIndex":0,"cellIndex":6},"value":6},{"position":{"boxIndex":0,"cellIndex":7},"value":69},
            {"position":{"boxIndex":0,"cellIndex":8},"value":8}]},
        {"cells":[{"position":{"boxIndex":1,"cellIndex":0},"value":0},{"position":{"boxIndex":1,"cellIndex":1},"value":1},
            {"position":{"boxIndex":1,"cellIndex":2},"value":2},{"position":{"boxIndex":1,"cellIndex":3},"value":3},
            {"position":{"boxIndex":1,"cellIndex":4},"value":4},{"position":{"boxIndex":1,"cellIndex":5},"value":5},
            {"position":{"boxIndex":1,"cellIndex":6},"value":6},{"position":{"boxIndex":1,"cellIndex":7},"value":7},
            {"position":{"boxIndex":1,"cellIndex":8},"value":8}]},
        {"cells":[{"position":{"boxIndex":1,"cellIndex":0},"value":0},{"position":{"boxIndex":1,"cellIndex":1},"value":1},
            {"position":{"boxIndex":1,"cellIndex":2},"value":2},{"position":{"boxIndex":1,"cellIndex":3},"value":3},
            {"position":{"boxIndex":1,"cellIndex":4},"value":4},{"position":{"boxIndex":1,"cellIndex":5},"value":5},
            {"position":{"boxIndex":1,"cellIndex":6},"value":6},{"position":{"boxIndex":1,"cellIndex":7},"value":7},
            {"position":{"boxIndex":1,"cellIndex":8},"value":8}]},
            {"cells":[{"position":{"boxIndex":1,"cellIndex":0},"value":0},{"position":{"boxIndex":1,"cellIndex":1},"value":1},
        {"position":{"boxIndex":1,"cellIndex":2},"value":2},{"position":{"boxIndex":1,"cellIndex":3},"value":3},
        {"position":{"boxIndex":1,"cellIndex":4},"value":4},{"position":{"boxIndex":1,"cellIndex":5},"value":5},
        {"position":{"boxIndex":1,"cellIndex":6},"value":6},{"position":{"boxIndex":1,"cellIndex":7},"value":7},
        {"position":{"boxIndex":1,"cellIndex":8},"value":8}]},
        {"cells":[{"position":{"boxIndex":1,"cellIndex":0},"value":0},{"position":{"boxIndex":1,"cellIndex":1},"value":1},
        {"position":{"boxIndex":1,"cellIndex":2},"value":2},{"position":{"boxIndex":1,"cellIndex":3},"value":3},
        {"position":{"boxIndex":1,"cellIndex":4},"value":4},{"position":{"boxIndex":1,"cellIndex":5},"value":5},
        {"position":{"boxIndex":1,"cellIndex":6},"value":6},{"position":{"boxIndex":1,"cellIndex":7},"value":7},
        {"position":{"boxIndex":1,"cellIndex":8},"value":8}]},
        {"cells":[{"position":{"boxIndex":1,"cellIndex":0},"value":0},{"position":{"boxIndex":1,"cellIndex":1},"value":1},
        {"position":{"boxIndex":1,"cellIndex":2},"value":2},{"position":{"boxIndex":1,"cellIndex":3},"value":3},
        {"position":{"boxIndex":1,"cellIndex":4},"value":4},{"position":{"boxIndex":1,"cellIndex":5},"value":5},
        {"position":{"boxIndex":1,"cellIndex":6},"value":6},{"position":{"boxIndex":1,"cellIndex":7},"value":7},
        {"position":{"boxIndex":1,"cellIndex":8},"value":8}]},
        {"cells":[{"position":{"boxIndex":1,"cellIndex":0},"value":0},{"position":{"boxIndex":1,"cellIndex":1},"value":1},
        {"position":{"boxIndex":1,"cellIndex":2},"value":2},{"position":{"boxIndex":1,"cellIndex":3},"value":3},
        {"position":{"boxIndex":1,"cellIndex":4},"value":4},{"position":{"boxIndex":1,"cellIndex":5},"value":5},
        {"position":{"boxIndex":1,"cellIndex":6},"value":6},{"position":{"boxIndex":1,"cellIndex":7},"value":7},
        {"position":{"boxIndex":1,"cellIndex":8},"value":8}]},
        {"cells":[{"position":{"boxIndex":1,"cellIndex":0},"value":0},{"position":{"boxIndex":1,"cellIndex":1},"value":1},
        {"position":{"boxIndex":1,"cellIndex":2},"value":2},{"position":{"boxIndex":1,"cellIndex":3},"value":3},
        {"position":{"boxIndex":1,"cellIndex":4},"value":4},{"position":{"boxIndex":1,"cellIndex":5},"value":5},
        {"position":{"boxIndex":1,"cellIndex":6},"value":6},{"position":{"boxIndex":1,"cellIndex":7},"value":7},
        {"position":{"boxIndex":1,"cellIndex":8},"value":8}]},
        {"cells":[{"position":{"boxIndex":1,"cellIndex":0},"value":0},{"position":{"boxIndex":1,"cellIndex":1},"value":1},
        {"position":{"boxIndex":1,"cellIndex":2},"value":2},{"position":{"boxIndex":1,"cellIndex":3},"value":3},
        {"position":{"boxIndex":1,"cellIndex":4},"value":4},{"position":{"boxIndex":1,"cellIndex":5},"value":5},
        {"position":{"boxIndex":1,"cellIndex":6},"value":6},{"position":{"boxIndex":1,"cellIndex":7},"value":7},
        {"position":{"boxIndex":1,"cellIndex":8},"value":8}]}
        ]}
      """# */
       var request = URLRequest(url: URL(string: "https://www.codermerlin.com/vapor/du-chen/games/\(getID())/cells?filter=all")!)
        request.httpMethod = "GET"

        // Execute synchronously (uses extension in code below)
        let (data, response, error) = URLSession.shared.syncRequest(with: request)
        //var boardy : Boardy? = nil 
        if let data = data, 
           let string = String(data: data, encoding: .utf8) { 
        

    guard let data = string.data(using: .utf8),
          let potentialBoard : Boardy = try? decoder.decode(Boardy.self, from: data) else {
        fatalError("did not decode properly")   
        
    }
     boardy = potentialBoard
       } else if let error = error {
            print( "Error: \(error)")
        }
        else {
            print("An unexpected eorror occured")
        }

        } 

getTesting() 
print(boardy!.board[0].cells[7].value!)

//Put testing
let cellIndex = 7
let boxIndex = 0
let value = 1
struct PutData: Codable{
    var value: Int
    
}

func putTesting() {
    var  putData = PutData(value: value)
    let encoder = JSONEncoder()
    guard let data1 = try? encoder.encode(putData)
         /* let jsonBody = Data?(data: data, encoding: .utf8) */else {
        fatalError("Failed to encode data into json.")
    }
//    print(jsonBody)
    var request = URLRequest(url: URL(string: "https://www.codermerlin.com/vapor/du-chen/games/\(getID())/cells/\(boxIndex)/\(cellIndex)")!)
request.httpMethod = "PUT"
request.httpBody = data1

//request.addValue(value: value, forHTTPHeaderField: forHTTPHeaderField)
        // Execute synchronously (uses extension in code below)
        let (data, response, error) = URLSession.shared.syncRequest(with: request)
        //var boardy : Boardy? = nil 
        if let data = data, 
        let string = String(data: data, encoding: .utf8) { 
        } else if let error = error {
            print( "Error: \(error)")
        }
        else {
            print("An unexpected eorror occured")
        }
}
putTesting()
getTesting() 
print(boardy!.board[0].cells[7].value!)


// Reference: https://stackoverflow.com/questions/26784315/can-i-somehow-do-a-synchronous-http-request-via-nsurlsession-in-swift
extension URLSession {
    func syncRequest(with request: URLRequest) -> (Data?, URLResponse?, Error?) {
        var data: Data?
        var response: URLResponse?
        var error: Error?

        let dispatchGroup = DispatchGroup()
        let task = dataTask(with: request) {
            data = $0
            response = $1
            error = $2
            dispatchGroup.leave()
        }
        dispatchGroup.enter()
        task.resume()
        dispatchGroup.wait()

        return (data, response, error)
    }
}


