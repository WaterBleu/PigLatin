//
//  main.m
//  PigLatin
//
//  Created by Jeff Huang on 2015-07-03.
//  Copyright (c) 2015 Jeff Huang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PigLatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        char str[100];
        PigLatin *pl = [[PigLatin alloc] init];
        
        NSLog(@"Enter the phrase intented for Piglatinization >");
        fgets(str, 100, stdin);
        
        NSString* inputString = [[NSString alloc] initWithUTF8String:str];
        inputString = [inputString stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
        NSString* outputString = [pl stringByPigLatinization:inputString];
        NSLog(@"The output is: %@", outputString);
        
    }
    return 0;
}
