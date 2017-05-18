//
//  ViewController.h
//  coredata
//
//  Created by Gaurav Amrutiya on 18/05/17.
//  Copyright © 2017 Gaurav Amrutiya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "coreDataStack.h"
#import "coreDataHandler.h"

@interface ViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>
{

    NSArray *resultArr;
}
@property (weak, nonatomic) IBOutlet UITableView *tblVw;

@end

