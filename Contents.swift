//: Playground - noun: a place where people can play

import UIKit

let ab: [Int] = [62, 24, 22, 12, 11,9,8,7,6,5,4,3,2,1,0]

func merge(leftArray: [Int], rightArray: [Int]) -> [Int] {
  var mergedArray = [Int]()

  var leftIndex=0
  var rightIndex=0

  while (leftIndex<leftArray.count && rightIndex<rightArray.count) {
    if(leftArray[leftIndex] < rightArray[rightIndex]) {
      mergedArray.append(leftArray[leftIndex])
      leftIndex+=1
    }
    else if(rightArray[rightIndex] < leftArray[leftIndex]) {
      mergedArray.append(rightArray[rightIndex])
      rightIndex+=1
    }
    else if(rightArray[rightIndex] == leftArray[leftIndex]) {
      mergedArray.append(rightArray[rightIndex])
      mergedArray.append(leftArray[leftIndex])
      rightIndex+=1
      leftIndex+=1
    }
  }

  while(leftIndex < leftArray.count){
    mergedArray.append(leftArray[leftIndex])
    leftIndex+=1
  }

  while(rightIndex < rightArray.count){
    mergedArray.append(rightArray[rightIndex])
    rightIndex+=1
  }

  return mergedArray
}

func splitArray(array ab: [Int]) -> [Int] {
  guard ab.count > 1 else {
    return ab
  }
  let midIndex = ab.count/2
  let newLeftArray = splitArray(array: Array(ab[0..<midIndex]))
  let newRigtArray = splitArray(array: Array(ab[midIndex..<ab.count]))
  return merge(leftArray: newLeftArray, rightArray: newRigtArray)
}

splitArray(array: ab)

func myFibonacci(of n: Double, a: Double, b:Double) -> Double {
  if (n <= 0) { return 0 }
  else if (n == 1) { return b }
  else {
    return myFibonacci(of: n-1, a: b, b: a+b)
  }
}

print(myFibonacci(of: -1, a: 0, b: 1))
print(myFibonacci(of: 0, a: 0, b: 1))
print(myFibonacci(of: 28, a: 0, b: 1))

func myFibIterative(of n: Int, a: Int, b: Int) -> Int {
  var tempA = a
  var tempB = b
  var sum = 0
  if(n <= 0 ) {
    return sum
  }
  for i in (0..<n).reversed() {
    if (i == 0) { return sum }
    sum = tempA + tempB
    tempA = tempB
    tempB = sum
  }
  return sum
}

myFibIterative(of: 9, a: 0, b: 1)
myFibIterative(of: 9, a: 0, b: 1)
myFibIterative(of: 0, a: 0, b: 1)
myFibIterative(of: -10, a: 0, b: 1)

let finalAns = myFibonacci(of: 9, a: 0, b: 1)
let finalAnsTwo = myFibonacci(of: 9, a: 0, b: 1)
print("The nth number in Fibonacci sequence is \(finalAns)")
print("The nth number in Fibonacci sequence is \(finalAnsTwo)")


func fibonacciInternet(of n: Int) -> Int{
  if (n <= 1) {
    return n
  } else {
    return fibonacciInternet(of: n-1) + fibonacciInternet(of: n-2)
  }
}

fibonacciInternet(of: 10)
fibonacciInternet(of: 10)

func fibonacciMyInternet(of n: Int) -> Int{
  if (n == 1) { return 1 }
  else if (n == 0) { return 0 }
  else {
    return fibonacciMyInternet(of: n-1) + fibonacciMyInternet(of: n-2)
  }
}

fibonacciMyInternet(of: 10)
fibonacciMyInternet(of: 10)

var x = 1
var sum = 0
func fibonacci(of n: Int, a: Int, b:Int) -> Int {
  if (x == n) {
    return sum
  } else {
    x+=1
    sum = a+b
    return fibonacci(of: n, a: b, b: sum)
  }
  if (n == 3) {
    return 4
  } else if (n == 2) {
    return 2
  } else if (n == 1) {
    return 1
  } else if (n == 0) {
    return 0
  } else {
    x+=1
    sum = a+b
    return fibonacci(of: n, a: b, b: sum)
  }
}

func climb2(sum:Int, d:Int) -> Int {
  return sum + d
}

func climb1(a: Int, b:Int, c:Int) -> Int {
  return climb2(sum: a+b+c, d: 7)
}

climb1(a: 1, b: 2, c: 4)

