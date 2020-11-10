import UIKit

let items = [10, 0, 3, 9, 2, 14, 8, 27, 1, 5, -1, 26, 4, -5, -4]

func quickSort(_ items: [Int]) -> [Int] {

    guard items.count > 1 else { return items }

    let median = items[items.count/2]

    var less = [Int]()
    for element in items {
        if element < median {
            less.append(element)
        }
    }

    var equal = [Int]()
    for element in items {
        if element == median {
            equal.append(element)
        }
    }

    var greater = [Int]()
    for element in items {
        if element > median {
            greater.append(element)
        }
    }

    return quickSort(less) + equal + quickSort(greater)
}

let sortedArr = quickSort(items)
print(sortedArr)

