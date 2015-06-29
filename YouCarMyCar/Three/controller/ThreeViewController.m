//
//  ThreeViewController.m
//  YoucarMycar
//
//  Created by LLY on 15-6-26.
//  Copyright (c) 2015年 LLY. All rights reserved.
//

#import "ThreeViewController.h"
#import "TouxiangTableViewCell.h"
#import "ButtonTableViewCell.h"
#import "TongyongTableViewCell.h"
@interface ThreeViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,strong)UITableView *tableView;
@property (nonatomic,strong)NSMutableDictionary *dic;
@end

@implementation ThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    self.navigationItem.title = @"个人信息";
    // Do any additional setup after loading the view.
    
    
    self.dic = [[NSMutableDictionary alloc]init];
    NSArray *array1 = [[NSArray alloc]initWithObjects:@"我的参与",@"活动介绍",@"关于我们",@"用户反馈",@"版本更新", nil];
    NSArray *array2 = [[NSArray alloc]initWithObjects:@"退出登录", nil];
    
    
    [self.dic  setValue:array1 forKey:@"1"];
    [self.dic  setValue:array2 forKey:@"2"];
    
    
    self.tableView = [[UITableView alloc]initWithFrame:self.view.bounds];
    self.tableView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.tableView];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    self.tableView.tableFooterView = [[UIView alloc]init];
    
    [self.tableView registerNib:[UINib nibWithNibName:@"TouxiangTableViewCell" bundle:nil] forCellReuseIdentifier:@"imageCell"];
    [self.tableView registerNib:[UINib nibWithNibName:@"ButtonTableViewCell" bundle:nil] forCellReuseIdentifier:@"buttonCell"];
    [self.tableView registerNib:[UINib nibWithNibName:@"TongyongTableViewCell" bundle:nil] forCellReuseIdentifier:@"tongCell"];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    

    
    
    
    
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    if (section == 0) {
        return 2;
    }else if (section == 1){
        return 5;
    }else{
        return 1;
    }
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0 && indexPath.section == 0) {
        return 90;
    }else{
        return 50;
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return 0;
    }else{
        return 10;
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSArray *array = [self.dic valueForKey:[NSString stringWithFormat:@"%ld",indexPath.section]];
    
    NSString *str = array[indexPath.row];
    
    
    if (indexPath.row == 0 && indexPath.section == 0) {
        
        TouxiangTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"imageCell" forIndexPath:indexPath];
        cell.photoImage.layer.cornerRadius = 35;
        cell.photoImage.layer.masksToBounds = YES;
        cell.selectionStyle =UITableViewCellSelectionStyleNone;
        cell.photoImage.image = [UIImage imageNamed:@"2.png"];
        return cell;
        
    }else if(indexPath.section == 0 && indexPath.row == 1){
        
        ButtonTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"buttonCell" forIndexPath:indexPath];
        cell.selectionStyle =UITableViewCellSelectionStyleNone;
        return cell;
        
    }else{
        
        TongyongTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"tongCell" forIndexPath:indexPath];;
        cell.selectionStyle =UITableViewCellSelectionStyleNone;
        cell.lableText.text = str;
        cell.lableText.textColor = [UIColor colorWithRed:15 / 255.0 green:15/ 255.0  blue:15/ 255.0  alpha:1];
        if (indexPath.section > 0 && indexPath.section <2 && indexPath.row == 0) {
            cell.myView.hidden = 0;
        }
        
        
        return cell;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
