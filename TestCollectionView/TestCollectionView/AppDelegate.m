//
//  AppDelegate.m
//  TestCollectionView
//
//  Created by ganping on 16/2/17.
//  Copyright © 2016年 ganping. All rights reserved.
//

#import "AppDelegate.h"
#import "Person.h"

@interface AppDelegate ()<NSCollectionViewDelegate>

@property (weak) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSArrayController *peoples;
@property (weak) IBOutlet NSCollectionView *collectionView;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    for (int i = 0; i < 20 ; i ++) {
        Person *person = [Person new];
        person.name = [NSImage imageNamed:@"George_Header"];
        [self.peoples addObject:person];
    }
    self.collectionView.delegate = self;
    [self.peoples setSelectionIndex:0];
}

- (BOOL)collectionView:(NSCollectionView *)collectionView canDragItemsAtIndexPaths:(NSSet<NSIndexPath *> *)indexPaths withEvent:(NSEvent *)event
{
    return YES;
}

- (BOOL)collectionView:(NSCollectionView *)collectionView canDragItemsAtIndexes:(NSIndexSet *)indexes withEvent:(NSEvent *)event
{
    return YES;
}

- (BOOL)collectionView:(NSCollectionView *)collectionView writeItemsAtIndexPaths:(NSSet<NSIndexPath *> *)indexPaths toPasteboard:(NSPasteboard *)pasteboard
{
    return YES;
}

- (void)collectionView:(NSCollectionView *)collectionView didSelectItemsAtIndexPaths:(NSSet<NSIndexPath *> *)indexPaths
{
    NSLog(@"indexPaths%@",indexPaths);
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
