//
//  main.m
//  Word Effects
//
//  Created by Nelson Chow on 2016-03-07.
//  Copyright © 2016 Nelson Chow. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char inputChars[255];   // 255 unit long array of characters
        char inputNumber[1];        // user input number to determine the operation performed on the string
        NSString *respond;
        NSString *stringToCap, *stringToLower, *canadianize, *despace;
        NSInteger numberize;
        NSString *question = @"?";
        NSString *exclamation = @"!";
        
        while (YES) {
            
            // print out the menu of operations
            printf(" 1. Uppercase \n 2. Lowercase \n 3. Numberize \n 4. Canadianize \n 5. Respond \n 6. De-space-it \n");
            
            // limit input to max 255 characters
            printf("Input a string: ");
            fgets(inputChars, 255, stdin);
            
            // print as a c string
            printf("Your string is %s\n", inputChars);
            
            
            // convert char array to an NSString object
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            
            // print NSString object
            NSLog(@"Input was: %@", inputString);
            
            // ask for operation
            printf("Input a number: ");
            fgets(inputNumber, 255, stdin);
            
            // convert char array to NSNumber
            NSString *inputNumberString = [NSString stringWithUTF8String:inputNumber];
            
            // print NSString
            NSLog(@"You have selected: %@", inputNumberString);
            
            // perform operation
            switch (*inputNumber) {
                case '1':
                    stringToCap = [inputString uppercaseString];
                    NSLog(@"Your string in uppercase: %@", stringToCap);
                    break;
                    
                case '2':
                    stringToLower = [inputString lowercaseString];
                    NSLog(@"You string in lowercase: %@", stringToLower);
                    break;
                    
                case '3':
                    numberize = [inputString intValue];
                    NSLog(@"Your string contains these integers: %li", numberize);
                    break;
                    
                case '4':
                    canadianize = [inputString stringByAppendingString: @", ehh?"];
                    NSLog(@"Canadianized: %@", canadianize);
                    break;
                    
                case '5':
                    respond = [inputString substringFromIndex: ([inputString length] - 1)];
                    if ([respond isEqualToString: question]) {
                            NSLog(@"I don't know.");
                    }
                    if ([respond isEqualToString: exclamation])
                            NSLog(@"Whoa, calm down!");
                    break;
            
                case '6':
                    despace = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                    NSLog(@"Your string without spaces: %@", despace);
                    break;
                    
                default:
                    NSLog(@"Invalid input.");
                    break;
            }
                    
            }
        }
    
    return 0;
}
