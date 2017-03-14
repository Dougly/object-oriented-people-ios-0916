//
//  FISPerson.h
//  ObjectOrientedPeople
//
//  Created by Douglas Galante on 3/14/17.
//  Copyright © 2017 al-tyus.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISPerson : NSObject

@property (strong, readonly) NSString *name;
@property (readonly) NSUInteger ageInYears;
@property (readonly) NSUInteger heightInInches;
@property (strong, readonly) NSMutableArray *skills;
@property (readonly) BOOL isAQualifiedTutor;

- (instancetype)init;

- (instancetype)initWithName: (NSString *)name ageInYears:(NSUInteger)age;

- (instancetype)initWithName:(NSString *)name ageInYears:(NSUInteger)age heightInInches:(NSUInteger)height;

- (NSString *)celebrateBirthday;

- (void)learnSkillBash;

- (void)learnSkillXcode;

- (void)learnSkillObjectiveC;

- (void)learnSkillObjectOrientedProgramming;

- (void)learnSkillInterfaceBuilder;

- (BOOL)isQualifiedTutor;

@end
