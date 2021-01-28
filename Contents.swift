import UIKit

var str = "Hello, playground"

/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()
 */
var numberOneFloat = 2332.23
var numberTwoFloat = 565.22
let numberThirdDouble = Double(numberOneFloat) + Double(numberTwoFloat)
print(numberThirdDouble)

/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 */

 var numberOne = 33
 var numberTwo = 12
let divisionOfTwoNumber = numberOne/numberTwo
var remainder = numberOne % numberTwo
print("when dividing \(numberOne) by \(numberTwo), the result is \(divisionOfTwoNumber), the remainder is \(remainder)")

/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */
let qty = 10
var price = 1000
var totalSum = 0

if qty >= 5 && qty < 10 {
    price = 900
}else if qty >= 10 {
    price = 850
}
totalSum = qty * price
 print("new: \(qty) Macbook Pro with the price of: \(price) EUR, will cost you: \(totalSum)")



/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */

 let userInputAge = "33a"

if let convertStringToInt = Int(userInputAge){
print("String is convertable with the \(convertStringToInt)")
}else {
    print("unable to convert string to Integer")
}

/*
 Ex5:
 Calculate the number of years, months, days from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")
 */

 let formatter = DateFormatter()
formatter.dateFormat = "dd.MM.yy"

let calendar = Calendar.current

let currentDate = Date()
let myBirthdayDateString = "06.12.1995"
let myBirthday = formatter.date(from: myBirthdayDateString) ?? Date()
 
var totalyearsFromBirthTwo = calendar.dateComponents([.year], from: myBirthday, to: currentDate).year
var totalMonthsFromBirthTwo = calendar.dateComponents([.month], from: myBirthday, to: currentDate).month
var totaldaysFromBirthTwo = calendar.dateComponents([.day], from: myBirthday, to:currentDate).day

if totalyearsFromBirthTwo == 0 || totalMonthsFromBirthTwo == 0 || totaldaysFromBirthTwo == 0 {
    print("unable check total days, months, years")
}  else{
    print ("Total years \(totalyearsFromBirthTwo) total months \(totalMonthsFromBirthTwo) total days \(totaldaysFromBirthTwo)")
}


/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter
 */
if let month = calendar.dateComponents([.month], from: myBirthday).month {

     var quarter = 0
    switch month {
    case 1...3:
        quarter = 1
    case 4...6:
        quarter = 2
    case 7...9:
        quarter = 3
    case 10...12:
        quarter = 4
    default:
        quarter = 0
    }
    if quarter != 0 {
print("I was born in the \(quarter) quarter")
    }else{
    print ("unable to check")
    }
 }

