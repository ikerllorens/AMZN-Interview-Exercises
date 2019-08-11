let area = [[1,1,1,1],
            [0,1,1,1],
            [0,0,0,0],
            [1,1,9,1],
            [0,0,1,1]]

func MovePosition(map: [[Int]], posx: Int, posy: Int, columns: Int, rows: Int, moveCount: Int) -> Int {
    var modMap = map
    
    if posx >= columns || posy >= rows || posy < 0 || posx < 0  {
        return -1
    }
    
    
    print(posx, posy, columns, rows, map[posy][posx])
    if map[posy][posx] == 9 {
        return moveCount
    } else if map[posy][posx] == 0 {
        return -1
    } else if map[posy][posx] == 2 {
        return -1
    }
    
    modMap[posy][posx] = 2
    let up = MovePosition(map: modMap, posx: posx, posy: (posy - 1), columns: columns, rows: rows, moveCount: (moveCount + 1))
    let down = MovePosition(map: modMap, posx: posx, posy: (posy + 1), columns: columns, rows: rows, moveCount: (moveCount + 1))
    let right = MovePosition(map: modMap, posx: (posx + 1), posy: posy, columns: columns, rows: rows, moveCount: (moveCount + 1))
    let left = MovePosition(map: modMap, posx: (posx - 1), posy: posy, columns: columns, rows: rows, moveCount: (moveCount + 1))
    
    var arrayOfResults = [up, down, right, left]
    arrayOfResults.sort()

    for result in arrayOfResults {
        if result != -1 {
            return result
        }
    }
  
    
    return -1
}

print(MovePosition(map: area, posx: 0, posy: 0, columns: 4, rows: 5, moveCount: 0))


