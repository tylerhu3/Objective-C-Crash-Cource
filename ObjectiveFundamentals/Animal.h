//
//  Animal.h
//  ObjectiveFundamentals
//
//  Created by Tyler Hu on 4/24/21.
//
/*
 Base class example for Objective C, all base classes should inherit from
 NSObject. The implementation is located in the m file.
 */

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Animal : NSObject

@property NSString *name;
@property NSString *favFood;
@property NSString *sound;

-(instancetype) initWithName: (NSString*) defaultName;
-(void) getInfo;
-(float) weightInKg:(float) weightInLbs;

-(NSString *) talkToMe: (NSString *) myName;

@end

NS_ASSUME_NONNULL_END
