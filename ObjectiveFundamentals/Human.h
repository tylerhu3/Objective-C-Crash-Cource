//
//  Human.h
//  ObjectiveFundamentals
//
//  Created by Tyler Hu on 4/27/21.
//

/*
 This is a inheritance example, humans are all animal, thus it will
 the human class will inherit everything from the animal class
 */

#import "Animal.h"

NS_ASSUME_NONNULL_BEGIN

@interface Human : Animal

@property Animal *pet;

-(instancetype) initWithName: (NSString*) newName
petName: (Animal*) petName;

-(void) speak;

-(int) getSum: (int) num1
   nextNumber: (int) num2;

@end

NS_ASSUME_NONNULL_END
