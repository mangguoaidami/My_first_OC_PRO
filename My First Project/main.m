//
//  main.m
//  My First Project
//
//  Created by Lionel Zhang on 2018/11/2.
//  Copyright © 2018 Lionel Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        // insert code here...
//        int num = 400;
//        num = num + 100;
//        NSLog(@"num equals %i", num);
        
        int answer = 0;
        int guess = 0;
        int turn = 0;
        answer = arc4random() % 100 + 1;
//        NSLog(@"The random value is %i", answer);
//        NSLog(@"Enter a number between 1 and 100");
//        scanf("%i", &guess);
//        NSLog(@"You entered: %i", guess);
        while (guess != answer) {
            turn ++;
            NSLog(@"Guess #%i: Enter a number between 1 and 100", turn);
            scanf("%i", &guess);
            
            if(guess > answer){
                NSLog(@"Lower!");
            }
            else if(guess < answer){
                NSLog(@"Higher!");
            }
            else{
                NSLog(@"Correct! The answer was %i", answer);
            }
        };
        
        NSLog(@"It took you %i tries", turn);
    }
    return 0;
}
