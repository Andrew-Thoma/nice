import Foundation
import FoundationNetworking
import SwiftShims
/*
struct Board: Codable{
    var id: String
}
*/
let decoder = JSONDecoder()
/*
var request = URLRequest(url: URL(string: "https://www.codermerlin.com/vapor/du-chen/games")!)
request.httpMethod = "POST"
let (data, response, error) = URLSession.shared.syncRequest(with: request)
var board : Board? = nil 
if let data = data,
   let string = String(data: data, encoding: .utf8) {
    //    print(string)
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
func getID() -> String{
    return (board!.id)
    
}
print(getID())

//print(getID())

*/

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
var board : Boardy? = nil

func getTesting() {
    
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
      """#
  /*     var request = URLRequest(url: URL(string: "https://www.codermerlin.com/vapor/du-chen/games/\(getID())/cells?filter=all")!)
        request.httpMethod = "GET"

        // Execute synchronously (uses extension in code below)
        let (data, response, error) = URLSession.shared.syncRequest(with: request)
        var board : Boardy? = nil 
        if let data = data, 
        let string = String(data: data, encoding: .utf8) { 
    */ 
    guard let data = json.data(using: .utf8),
          let potentialBoard : Boardy = try? decoder.decode(Boardy.self, from: data) else {
        fatalError("did not decode properly")   
        
    }
     board = potentialBoard
} 
//}
getTesting() 
print(board!.board[0].cells[7].value!)
/*
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

*/

