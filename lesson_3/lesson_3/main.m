//
//  main.m
//  lesson_3
//
//  Created by maxud on 15.08.17.
//  Copyright © 2017 lesson_1. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSString *const key1 = @"key1";
static NSString *const key2 = @"key2";

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        //        NSArray *array1 = @[nil, nil, nil]; // нельзя создавать с нулевыми объектами
        NSArray *array2 = @[NSNull.null, NSNull.null, NSNull.null];
        
        // инициализация
        
        NSMutableArray *mutableArray1 = [NSMutableArray new];
        NSMutableArray *mutableArray2 = [NSMutableArray array];
        NSMutableArray *mutableArray3 = [[NSMutableArray alloc] init];
        NSMutableArray *mutableArray4 = [[NSMutableArray alloc] initWithArray:array2];
        NSMutableArray *mutableArray5 = [NSMutableArray arrayWithObjects:mutableArray1, mutableArray2, mutableArray3, nil];
        
        NSMutableArray *mutArray=[NSMutableArray new];
        
        NSString *text=@"some text";
        
        
        
        NSString *formatedString=[NSString stringWithFormat:@"%@: здесь был текст",text];
   
        
        NSMutableSet *mutableSet1 = [NSMutableSet set];
        [mutableSet1 addObject:mutableArray1];
        [mutableSet1 addObject:mutableArray1];
        
        BOOL hasValue = [mutableSet1 containsObject:mutableArray1];
        
        
        
        
        
        
        NSDictionary *dictionary1 = @{@"key" : @"value"};
        
        
        
        NSMutableDictionary *mutableDictionary = [NSMutableDictionary dictionary];
        [mutableDictionary setObject:array2 forKey:@"keyOfArray2"];
        
        NSString *stringValue1 = @"some string";
        NSString *stringValue2 = @"text";
        
        [mutableDictionary setObject:stringValue1 forKey:key1];
        [mutableDictionary setObject:stringValue2 forKey:key2];
        
        NSLog(@"");
        
        
        NSDictionary *pcShop = @{@"laptop"    : @[@"asus",@"apple",@"lenovo"],
                                 @"pc"        : @[@"asus",@"acer",@"hp"],
                                 @"monoblock" : @[@"bravo",@"microsoft",@"apple"] };
                                 
        NSDictionary *appleMania= @{@"laptop"    : @[@"amcbook pro",@"macbook air",@"macbook"],
                                    @"pc"        : @[@"Mac mini"],
                                    @"monoblock" : @[@"iMac"]};
                                                          
                                       
                    
        
        
        
        
        
        
        
        
        
        
        
        
        
        // сортировка
        
        NSMutableArray *arrayOfRandomNumbers = [NSMutableArray array];
        
        for (NSInteger i = 0; i < 20; i++)
        {
            NSInteger value = arc4random() % 99;
            [arrayOfRandomNumbers addObject:@(value)];
        }
        
        
        for (NSInteger i = 0; i < arrayOfRandomNumbers.count - 1; i++)
        {
            for (NSInteger j = 0; j < arrayOfRandomNumbers.count - 1; j++)
            {
                NSInteger currentValue = [arrayOfRandomNumbers[j] integerValue];
                NSInteger nextValue = [arrayOfRandomNumbers[j+1] integerValue];
                
                if (nextValue < currentValue)
                {
                    [arrayOfRandomNumbers replaceObjectAtIndex:j withObject:@(nextValue)];
                    [arrayOfRandomNumbers replaceObjectAtIndex:(j+1) withObject:@(currentValue)];
                }
            }
        }
        
        NSLog(@"result");
        
    }
    return 0;
}
