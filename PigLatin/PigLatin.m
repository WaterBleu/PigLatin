//
//  PigLatin.m
//  PigLatin
//
//  Created by Jeff Huang on 2015-07-03.
//  Copyright (c) 2015 Jeff Huang. All rights reserved.
//

#import "PigLatin.h"

@implementation PigLatin
    //inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

-(NSMutableString*)stringByPigLatinization:(NSString*)inputString{
    NSMutableString* outputString = [[NSMutableString alloc] init];
    
    NSArray *inputArray = [inputString componentsSeparatedByString:@" "];
    for(NSMutableString* s in inputArray){
        NSMutableString *temp = [[NSMutableString alloc] init];
        if([s length] > 0){
            [temp appendString:[s substringFromIndex:1]];
            [temp appendString:[s substringWithRange:NSMakeRange(0,1)]];
        }
        [temp appendString:@"ay "];
        [outputString appendString: temp];
    }
    
    return outputString;
}

@end
