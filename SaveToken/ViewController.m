//
//  ViewController.m
//  SaveToken
//
//  Created by ru dian on 16/9/7.
//  Copyright © 2016年 尚学. All rights reserved.
//

#import "ViewController.h"
#import "DQUserDataManager.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *pwdLal;
@property (weak, nonatomic) IBOutlet UITextField *pwdTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setupUI];
}
- (void)setupUI{
}

- (IBAction)setupBtn:(UIButton *)sender {
    
    //存储密码
    [DQUserDataManager savePassWord:self.pwdTextField.text];
    
     NSLog(@"存储后读取:%@",[DQUserDataManager readPassWord]);
    
    //读取显示
    self.pwdLal.text = [DQUserDataManager readPassWord];
}

- (IBAction)deletePwd:(UIButton *)sender {
    [DQUserDataManager deletePassWord];
    self.pwdTextField.text = nil;
    self.pwdLal.text = nil;
     NSLog(@"删除以后再读取:%@",[DQUserDataManager readPassWord]);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
