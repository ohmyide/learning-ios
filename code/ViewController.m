//
//  ViewController.m
//  Quiz
//
//  Created by chuanjin on 2023/12/6.
//

#import "ViewController.h"

@interface ViewController ()
//- (IBAction)showAlertView:(UIButton *)sender;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)btn:(id)sender {
    NSLog(@"aaaaaaaaa");
    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"警告" message:@"这是一个UIAlertController,UIAlertView已经废弃了." preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action){
        //取消操作
        NSLog(@"取消");
    }];
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        //确定操作
        NSLog(@"确定");
    }];
    
    [alertVC addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"username";
    }];

    [alertVC addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"password";
        textField.secureTextEntry = YES;
    }];

    
    
//    UIAlertAction *okAction2 = [UIAlertAction actionWithTitle:@"好的2" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
//        //确定操作
//        NSLog(@"确定2");
//    }];
//
//    UIAlertAction *okAction3 = [UIAlertAction actionWithTitle:@"好的3" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
//        //确定操作
//        NSLog(@"确定3");
//    }];
    
    [alertVC addAction:cancelAction];
    [alertVC addAction:okAction];
//    [alertVC addAction:okAction2];
//    [alertVC addAction:okAction3];
    
    
    [self presentViewController:alertVC animated:YES completion:nil];
}

@end
