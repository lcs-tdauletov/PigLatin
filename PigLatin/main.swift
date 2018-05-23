import Foundation


// The variable that we are to work with

var intNumberOfRealLines = 0

// Input sorting

while true {
    print("How many lines do you want me to convert in Pig Latin?")
    // Checking for the nill inputs
    guard let givenNumberOfLines = readLine()  else {
        continue
        
        
    }
    // Integer conversion
    guard let intNumber = Int(givenNumberOfLines) else  {
        
        continue
        
    }
    
    
    //Final check
    
    if intNumber < 0 || intNumber > 10 {
        continue
    }
    
    // All clear, let's roll
    
    intNumberOfRealLines = intNumber
    break
}

// Process

//First of all, the declarations are crucial.

var newStringArray : [Character] = []
// Well, this might provoke people, but stil...
var mediocreStringLikeTheLifeItself = ""
for i in 1...intNumberOfRealLines {
    print("Enter the word number \(i)")
    
    guard let givenEnglishWord = readLine() else {
        continue
    }
    
    var charArray : [Character] = Array(givenEnglishWord)
    
    for i in 0...charArray.count - 1 {
        if charArray[i] == "A" || charArray[i] == "E" || charArray[i] == "I" || charArray[i] == "O" || charArray[i] == "U"  {
            // For this stroke, the man went through hesitation.
            for j in 0...charArray.count - 1 - i {
                newStringArray.append(charArray[i+j])
            }
            break
        } else {
            
            // See, not useless after all.
            // The reason for the existance of this minion is that when charArray was tried with the
            // newstringArray.append(charArray[i]) it would simply append it in the
            // Gramatically correct order.
            // I was quite baffled when my PARDON was turned into PARDONAY.
            // Then I figured that I better decelerate this piece of code below so that it reaches my
            // Forged string after the ARDON part.
            // So this minion was conceived. Not a minion that you wanna brag in front of your friends about,
            // But it's a solution.
            mediocreStringLikeTheLifeItself += String(charArray[i])
        }
        }
        
    }


var string = String(newStringArray)
string += mediocreStringLikeTheLifeItself
string += "AY"
print("\(string)")





