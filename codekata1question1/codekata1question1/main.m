//
//  main.m
//  codekata1question1
//
//  Created by Nick Perkins on 4/14/16.
//  Copyright © 2016 Nick Perkins. All rights reserved.
//
//  The task of this command line tool is to take any incrementNumber below a givenNumber and
//  divide it by 3 and 5. Then the numbers that are divisible by 3 or 5 will be totaled and
//  displayed for the user.

#import <Foundation/Foundation.h>
int givenNumber;
int incrementNumber;
int theSum;
void sumItUp(void);



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Get to work little numbers
        givenNumber = 1000;
        incrementNumber = 1;
        sumItUp();
        NSLog(@"The Sum of multiples between 3 and 5 that are below %d is %u", givenNumber, theSum);
        }
    return 0;
}

void sumItUp(){
    
    while (incrementNumber < givenNumber){
        if (incrementNumber % 3 == 0 || incrementNumber % 5 == 0){
            theSum = theSum + incrementNumber;
            incrementNumber +=1;
        }else {
            incrementNumber +=1;
        }
    }

}