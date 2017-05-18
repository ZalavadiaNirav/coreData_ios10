//
//  ViewController.m
//  coredata
//
//  Created by Gaurav Amrutiya on 18/05/17.
//  Copyright © 2017 Gaurav Amrutiya. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    resultArr=[[NSMutableArray alloc] init];
    _tblVw.delegate=self;
    _tblVw.dataSource=self;
    [_tblVw registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    
   
    NSManagedObjectContext *context=[coreDataStack sharedInstance].persistentContainer.viewContext;
    resultArr=[coreDataHandler fetchSampleWithContext:context] ;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return  [resultArr count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
      UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    Student *stuModel=resultArr[indexPath.row];
        cell.textLabel.text=stuModel.name;
        return cell;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
