//
//  main.m
//  ObjectiveFundamentals
//
//  Created by Tyler Hu on 4/24/21.
//

// Xcode Shortcuts
//Left: Navigator ( ⌘ + 0 ) Right: Inspectors ( ⌘ + ⌥ + 0 ) Bottom: Debug ( ⇧ + ⌘ + Y )
//Go to the right Tab: (Shift + Cmd + ])
//Go to the left Tab: (Shift + Cmd + [)

#import <Foundation/Foundation.h>
#import "Animal.h"
#import "Human.h"
#import "Human+Mutant.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Basic print, String, and List usage below
        
//        NSLog(@"Hello, World!");
//
//        NSString *quote = @"Dogs have masters, cats have staff";
//        NSLog(@"Size of String: %d", (int)[quote length]);
//        NSLog(@"Chat At 5: %c", (int)[quote characterAtIndex:5]);
//
//        //Mutable Strings
//        /*
//         Strings that doesn't need to be recreated everytime, normal NSString's
//         get recreated each time there's a append.
//         */
//        NSMutableString *groceryList = [NSMutableString stringWithCapacity:30];
//        [groceryList appendFormat:@"%s", "Potato, Banana, Pasta"];
//        NSLog(@"grocery list: %@", groceryList);
//
        
    
        //Example Objects:
        
        //Example Base Classes
        Animal *dog = [[Animal alloc] init];
        [dog getInfo];
        
        NSLog(@"name of dog %@", [dog name]);
        [dog setName:@"Tucker"];
        
        NSLog(@"name of dog %@", [dog name]);
        
        Animal *cat = [[Animal alloc] initWithName:@"Poe"];
        [cat getInfo];
        
        NSLog(@"name of cat %@", [cat name]);
        [cat setName:@"Mr Poe"];
        
        NSLog(@"name of cat %@", [cat name]);
        
        //Exanple inheritance, Category:
        Human *tyler = [[Human alloc] initWithName:@"Tyler" petName:dog];
        
        [tyler speak];
        
        [tyler setPower:@"Flight"];
        
        NSLog(@"Tyler's current power %@", [tyler power]);
        
        [tyler setPower:@"Super Strength"];
        NSLog(@"Gaved Tyler new power %@", [tyler power]);
        NSLog(@"3 + 5 = %d", [tyler getSum:3 nextNumber:5]);
        
        // ---------- Enums ----------
        // Used to define a custom variable with
        // a set of constants
        enum Ratings {
            Poor = 1,
            OK = 2,
            Average = 3,
            Good = 4,
            Great = 5
        };
 
        enum Ratings matrixRating = Great;
 
        NSLog(@"Matrix Rating %u", matrixRating);
        
        //Use of function inherited from Senses.h
        NSLog(@"My senses include %@", [tyler mySenses]);

        
    }
    return 0;
}
