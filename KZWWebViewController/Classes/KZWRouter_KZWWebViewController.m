//
//  KZWRouter_KZWWebViewController.m
//  AFNetworking
//
//  Created by yang ou on 2018/12/18.
//

#import "KZWRouter_KZWWebViewController.h"
#import "KZWWebViewController.h"

@implementation KZWRouter_KZWWebViewController

- (UIViewController *)KZWWebViewController:(NSDictionary *)params {
    typedef void (^callBackHandle)(void);
    NSString *urlString = [params valueForKey:@"urlString"];
    NSString *htmlString = [params valueForKey:@"htmlString"];
    NSString *baseURL = [params valueForKey:@"baseURL"];
    callBackHandle callBack = [params valueForKey:@"callBack"];
    
    KZWWebViewController *viewcontroller = nil;
    if (urlString.length > 0) {
        viewcontroller = [[KZWWebViewController alloc] initWithUrl:urlString callBackHandle:callBack];
    }else if (htmlString.length > 0) {
        viewcontroller = [[KZWWebViewController alloc] initHTMLString:htmlString baseURL:baseURL];
    }
    return viewcontroller;
}

@end
