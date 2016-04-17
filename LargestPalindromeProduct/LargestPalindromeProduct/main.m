//
//  main.m
//  LargestPalindromeProduct
//
//  Created by Nick Perkins on 4/15/16.
//  Copyright © 2016 Nick Perkins. All rights reserved.
//

#import <Foundation/Foundation.h>

void findPalindrome(void);
void sortAndDisplayPalindrome(void);
void showAllPalindromes(void);
NSString *myString;
NSInteger *myNumber;
NSMutableArray *foundPalindromes;
BOOL uResponse = 1;
char userSaid;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Calls function to begin multiplying two 3-digit numbers to find palindromes.
        findPalindrome();
        // Sorts all palindrones in ascending order inside array and displays largest.
        sortAndDisplayPalindrome();
        // Based on the users input they can see all saved palindrones inside the array.
        while (uResponse == 1) {
            printf("Would you like to see all the palindromes? Type Y or N.");
            scanf("%s", &userSaid);
            if (userSaid == 'y' || userSaid == 'Y') {
                showAllPalindromes();
                NSLog(@"That's All Folks! Goodbye.");
                uResponse = 2;
            }else if (userSaid == 'n' || userSaid == 'N'){
                NSLog(@"No problem. Maybe next time. Goodbye!");
                uResponse = 2;
            }else if (userSaid != 'n' || userSaid != 'N' || userSaid != 'y' || userSaid != 'Y'){
                // return and do the loop again.
                NSLog(@"Wrong input. Let's try again.");
            }
        }
    }
    return 0;
}
void findPalindrome() {

    //initalize array
    foundPalindromes = [[NSMutableArray alloc]init];
    // First for loop will cycle through numbers 100-1000
    for (NSInteger i = 100; i <= 1000; i++) {
        NSInteger num1 = i;
        // Second for loop will also cycle through numbers 100-1000 but also users numbers from the first for loop and multiples them to get a sum.
        for (NSInteger i2 = 100; i2 <= 1000; i2++){
            NSInteger num2 = i2;
            NSInteger aSum = num1 * num2;
            // Take sum of each calculation and convert to a string.
            myString = [@(aSum) stringValue];
            // Need a mutable string to receive the reversed string later.
            NSMutableString *reversedString = [NSMutableString string];
            // Determine the length of the sum located now in myString.
            NSInteger stringLength = [myString length];
            // A while loop will remove and reorder the string.
            while (stringLength > 0) {
                stringLength--;
                NSRange subStrRange = NSMakeRange(stringLength, 1);
                [reversedString appendString:[myString substringWithRange:subStrRange]];
            }
            // The flipped number which is a string is returned to a NSInteger so it can later be stored as a NSNumber
            [NSString stringWithString: reversedString];
            NSInteger myInt = [reversedString integerValue];
            if (myInt == aSum){
                //If the original value aSum and the flipped number myInt have the same value then then reversedString is changed to an NSNumber for later sorting and is stored inside NSMutableArray.
                [foundPalindromes addObject:[NSNumber numberWithInteger:[reversedString integerValue]]];
            }else{
                //doesn't save number if not a palindrome. Back to work.
            }
        }
    }
}
// This function will take the NSMutableArray and convert it to an NSArray that will be sorted in ascending order.  The lastobject is picked which is the largest palindrome and displayed for the user.
void sortAndDisplayPalindrome(){
    NSSortDescriptor *sortHow = [NSSortDescriptor sortDescriptorWithKey:nil ascending:YES];
    NSArray *sortingLikeThis = @[sortHow];
    NSArray *sortedPalindromes = [foundPalindromes sortedArrayUsingDescriptors:sortingLikeThis];
    NSLog(@"The largest palindrome found by multiplying two 3-digit numbers is %@.", sortedPalindromes.lastObject);
}
// This function is called if the user would like to see all the palindrones found by multiplying two 3-digit numbers. The results are displayed in ascending order of value.
void showAllPalindromes() {
    NSSortDescriptor *sortHow = [NSSortDescriptor sortDescriptorWithKey:nil ascending:YES];
    NSArray *sortingLikeThis = @[sortHow];
    NSArray *sortedPalindromes = [foundPalindromes sortedArrayUsingDescriptors:sortingLikeThis];
    NSLog(@"%@", sortedPalindromes);
}
