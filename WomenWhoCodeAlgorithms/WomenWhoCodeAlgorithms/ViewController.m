//
//  ViewController.m
//  WomenWhoCodeAlgorithms
//
//  Created by Mariya Eggensperger on 4/28/16.
//  Copyright © 2016 Mariya Eggensperger. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
// INSTRUCTIONS:
// Found On Code Wars
//  Similar to the Fibonacci Sequence, the "Tribonacci" sequence takes the sum of the previous 3 numbers to generate the next number. However unlike the Fibonacci sequence, Tribonacci takes a "signature" or starting array of numbers. Different signatures will generate different sequences.
//    
//    For example. If the starting signature was [1, 1, 1] the resulting sequence would be
//    
//    [1,1,1,3,5,9,17,31,...]
//    but if the signature was [0,0,1] it would be
//        
//        [0,0,1,1,2,4,7,13,24,...]
//        Write a function that takes as it's argument a signature and an "N" and return the first n elements (including the signature)
    
    // WORKING ANSWER
    
    // Design a signature array
    NSMutableArray *signature = @[@1,@2,@3,@4,@5];
    
    // Copy the signature array for future append
    NSMutableArray *answer = [signature mutableCopy];

    // Answer should return: 1, 2, 3, 4, 5, 6, 9, 12
    
    
    // Iterate over the Signature array up until third to last integer
    // because you'll reach scopes out of bounds
    // and you'll be referencing the following two
    
    for (NSUInteger i = 0; i<=(signature.count-3); i++) {
        
            NSNumber *first = signature[i]; // On the first loop i=0, on the second loop i=1, etc.
            NSNumber *second = signature[i+1];
            NSNumber *third = signature[i+2];
        
            // N = num1 + num2 + num3
            NSNumber *n = [NSNumber numberWithInteger:([first integerValue] + [second integerValue]+[third integerValue])];
        
            // Add the N value to the copy of the Signature array
            [answer addObject:n];
        
            NSLog(@"%@", n);
    }
    NSLog(@"%@",answer);
}

@end
