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
        int inputNumber;        // user input number to determine the operation performed on the string
        
        // limit input to max 255 characters
        printf("Input a string: ");
        fgets(inputChars, 255, stdin);
        
        // print as a c string
        printf("Your string is %s\n", inputChars);
        
        // convert char array to an NSString object
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        
        // print NSString object
        NSLog(@"Input was: %@", inputString);
        
    }
    return 0;
}
