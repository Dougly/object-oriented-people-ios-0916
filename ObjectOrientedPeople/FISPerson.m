//
//  FISPerson.m
//  ObjectOrientedPeople
//
//  Created by Douglas Galante on 3/14/17.
//  Copyright © 2017 al-tyus.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISPerson.h"

@interface FISPerson ()

@property (strong, readwrite) NSString *name;
@property (readwrite) NSUInteger ageInYears;
@property (readwrite) NSUInteger heightInInches;
@property (strong, readwrite) NSMutableArray *skills;
@property (readwrite) BOOL isAQualifiedTutor;

@end

@implementation FISPerson

- (instancetype)init {
    self = [self initWithName:@"Doug" ageInYears:28 heightInInches:71];
    return self;
}

- (instancetype)initWithName:(NSString *)name ageInYears:(NSUInteger)age {
    self = [self initWithName:name ageInYears:age heightInInches:71];
    return self;
}

- (instancetype)initWithName:(NSString *)name ageInYears:(NSUInteger)age heightInInches:(NSUInteger)height {
    self = [super init];
    if (self) {
        _name = name;
        _ageInYears = age;
        _heightInInches = height;
        _skills = [[NSMutableArray alloc] init];
        _isAQualifiedTutor = false;
    }
    return self;
}

- (NSString *)celebrateBirthday {
    self.ageInYears += 1;
    NSString *ordinal = [self ordinalForInteger:self.ageInYears];
    NSString *message = [[NSString stringWithFormat:@"HAPPY %lu%@ BIRTHDAY, %@!!!", self.ageInYears, ordinal, self.name] uppercaseString];    
    NSLog(@"%@", message);
    return message;
}

- (NSString *)ordinalForInteger:(NSUInteger)integer {
    NSString *ordinal = @"th";
    if (integer % 10 == 1 && integer % 100 != 11) {
        ordinal = @"st";
    } else if (integer % 10 == 2 && integer % 100 != 12) {
        ordinal = @"nd";
    } else if (integer % 10 == 3 && integer % 100 != 13) {
        ordinal = @"rd";
    }
    return ordinal;
}

- (void)learnSkillBash {
    BOOL hasSkill = NO;
    for (NSString *skill in self.skills) {
        if ([skill isEqualToString:@"bash"]) {
            hasSkill = YES;
        }
    }
    
    if (!hasSkill) {
        [self.skills addObject:@"bash"];
    }
}

- (void)learnSkillXcode {
    BOOL hasSkill = NO;
    for (NSString *skill in self.skills) {
        if ([skill isEqualToString:@"Xcode"]) {
            hasSkill = YES;
        }
    }
    
    if (!hasSkill) {
        [self.skills addObject:@"Xcode"];
    }
}

- (void)learnSkillObjectiveC {
    BOOL hasSkill = NO;
    for (NSString *skill in self.skills) {
        if ([skill isEqualToString:@"Objective-C"]) {
            hasSkill = YES;
        }
    }
    
    if (!hasSkill) {
        [self.skills addObject:@"Objective-C"];
    }
}

- (void)learnSkillObjectOrientedProgramming {
    BOOL hasSkill = NO;
    for (NSString *skill in self.skills) {
        if ([skill isEqualToString:@"Object-Oriented Programming"]) {
            hasSkill = YES;
        }
    }
    
    if (!hasSkill) {
        [self.skills addObject:@"Object-Oriented Programming"];
    }
}

- (void)learnSkillInterfaceBuilder {
    BOOL hasSkill = NO;
    for (NSString *skill in self.skills) {
        if ([skill isEqualToString:@"Interface Builder"]) {
            hasSkill = YES;
        }
    }
    
    if (!hasSkill) {
        [self.skills addObject:@"Interface Builder"];
    }
}

- (BOOL)isQualifiedTutor {
    if (self.skills.count > 3) {
        self.isAQualifiedTutor = YES;
    } else {
        self.isAQualifiedTutor = NO;
    }
    return self.isAQualifiedTutor;
}



@end
