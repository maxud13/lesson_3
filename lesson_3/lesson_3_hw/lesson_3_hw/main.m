//
//  main.m
//  lesson_3_hw
//
//  Created by maxud on 16.08.17.
//  Copyright © 2017 lesson_1. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    static NSString *const cityNameKey = @"cityName";
    static NSString *const carShopKey = @"carShop";
    static NSString *const brandNameKey= @"brandName";
    static NSString *const modelsKey= @"models";
    static NSString *const carModelKey= @"carModel";
    static NSString *const carParametersKey= @"carParameters";
    static NSString *const carColorKey= @"carColor";
    static NSString *const carPriceKey= @"carColor";
        
        int main(int argc, const char * argv[]);
        
            @autoreleasepool
            {
        
        NSArray *cityNames = @[@"Харьков",@"Киев",@"Ужгород",@"Винница",@"Суммы"];
        NSArray *carShops = @[@"Toyota",@"Nissan",@"Ford",@"Fiat",@"Honda"];
        NSArray *colors = @[@"красный",@"синий",@"черный",@"Взеленый",@"желтый"];
        
        NSArray *toyotaModels = @[ @"Carina", @"Camry", @"Corolla", @"Prius", @"Auris"];
        NSArray *nissanModels = @[ @"Juke", @"QASHQAI", @"X-TRAIL", @"GT-R", @"SENTRA"];
        NSArray *fordModels = @[ @"FIESTA", @"Camry", @"FOCUS", @"C-MAX", @"GALAXY"];
        NSArray *fiatModels = @[ @"LINEA", @"GRANDE PUNTO", @"FULLBACK", @"PANDA", @"DOBLO"];
        NSArray *hondaModels = @[ @"Accord", @"Civic Toure", @"Crosstour ", @"HR-V", @"Ridgeline "];
                
                NSArray *carModelsByShops = @[toyotaModels, nissanModels, fordModels, fiatModels, hondaModels];
                
                NSMutableDictionary *kharkivauto = [NSMutableDictionary dictionary];
                [kharkivauto setObject:[NSArray arrayWithObjects:toyotaModels[0], toyotaModels[1], toyotaModels[2], nil] forKey:(NSString*)carShops[0]];
                [kharkivauto setObject:[NSArray arrayWithObjects:nissanModels[0], nissanModels[1], nissanModels[2], nil] forKey:(NSString*)carShops[1]];
                NSMutableDictionary *kievauto = [NSMutableDictionary dictionary];
                [kievauto setObject:[NSArray arrayWithObjects:fordModels[0], fordModels[1], fordModels[2], nil] forKey:(NSString*)carShops[2]];
                [kievauto setObject:[NSArray arrayWithObjects:fiatModels[0], fiatModels[1], fiatModels[2], nil] forKey:(NSString*)carShops[3]];
                NSMutableDictionary *vinnicaauto = [NSMutableDictionary dictionary];
                [vinnicaauto setObject:[NSArray arrayWithObjects:hondaModels[0], hondaModels[1], hondaModels[2], hondaModels[3], hondaModels[4], nil] forKey:(NSString*)carShops[4]];
                ;
                
                
                
                NSMutableArray *ukraineCitiesArray = [NSMutableArray array];
                NSMutableArray *shopsOfCurrentCity = [NSMutableArray array];
                NSMutableArray *currentCityName = [NSMutableArray array];

        
                for (NSInteger currentCityIndex = 0; currentCityIndex  < cityNames.count; currentCityIndex++)
//                
//                    NSString *currentCityName = (NSString*)cityNames[currentCityIndex];
//                    NSMutableArray *shopsOfCurrentCity = [NSMutableArray array];    }
                for (NSInteger carShopIndex = 0; carShopIndex < carModelsByShops.count; carShopIndex++)
                {
                    NSString *currentShopName = (NSString*)carShops[carShopIndex];
                    NSArray *currentShopModels = (NSArray*)carModelsByShops[carShopIndex];
                    NSMutableArray *carModels = [NSMutableArray array];
                    
                    
                    
                    for (NSInteger modelIndex = 0; modelIndex < currentShopModels.count; modelIndex++)
                    {
                        NSInteger price = 10000 + (arc4random()%20000);
                        NSInteger randomColorIndex = arc4random()%colors.count;
                        NSString *color = (NSString*)colors[randomColorIndex];
                        NSDictionary *currentModelParametrs = @{carColorKey : color, carPriceKey : @(price)};
                        NSString *nameofmodel = (NSString*)currentShopModels[modelIndex];
                        NSDictionary *currentModel = @{carModelKey : nameofmodel, carParametersKey : currentModelParametrs};
                        [carModels addObject: currentModel];
                    }
                    NSLog(@"%@", carModels);
                    NSDictionary *currentShopDictionary = @{carShopKey:currentShopName, modelsKey:carModels};
                    [shopsOfCurrentCity addObject:currentShopDictionary];
                }
                NSLog (@"%@", shopsOfCurrentCity);
                NSDictionary *currentCityDictionary = @{cityNameKey : currentCityName, brandNameKey : shopsOfCurrentCity};
                [ukraineCitiesArray addObject:currentCityDictionary];
            
        NSLog(@"\nresult:\n%@", ukraineCitiesArray);
    return 0;
    
            }
    }
}
