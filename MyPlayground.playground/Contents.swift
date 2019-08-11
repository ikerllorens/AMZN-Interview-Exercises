var orderList = ["zld 93 12", "fp kindle book", "f kindle book", "zr kindle book", "afc kindle book", "afr kindle book", "yrte nintendo switch"]


var orderedOrders: [String] = []
var primeOrders: [String] = []
var notPrimeOrders: [String] = []

for order in orderList {
   let orderInfoArr = order.split(separator: " ")

    if let _ = Int(orderInfoArr[1]) {
        notPrimeOrders.append(order)
    } else {
        primeOrders.append(order)
    }
}

var dictionaryOfOrders: [String: String] = [:]
for primeOrders in primeOrders {
    let orderInfoArr = primeOrders.split(separator: " ")
    let key = String(orderInfoArr[1] + " " + orderInfoArr[0])
    
    dictionaryOfOrders[key] = primeOrders
}

primeOrders = []
for key in dictionaryOfOrders.keys.sorted() {
    primeOrders.append(dictionaryOfOrders[key]!)
}


orderedOrders.append(contentsOf: primeOrders)
orderedOrders.append(contentsOf: notPrimeOrders)

