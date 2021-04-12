//
//  DGQCenterView.m
//  DGQCycleView
//
//  Created by denggaoqiang on 2021/4/11.
//

#import "DGQCenterView.h"
#import "UIImageView+WebCache.h"

@implementation DGQCenterView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        _centerImgView = [[UIImageView alloc] initWithFrame:CGRectMake(frame.size.width/4, frame.size.height/4, frame.size.width/2, frame.size.height/2)];
        [self addSubview:_centerImgView];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame imageUrl:(NSString *)imageUrl {
    self = [super initWithFrame:frame];
    if (self) {
        _centerImgView = [[UIImageView alloc] initWithFrame:CGRectMake(frame.size.width/2, frame.size.height/2, frame.size.width/2, frame.size.height/2)];
        _imageUrl = imageUrl;
        if (imageUrl.length >0) {
            [_centerImgView sd_setImageWithURL:[NSURL URLWithString:imageUrl]];
        }
        [self addSubview:_centerImgView];
    }
    return self;
}


- (void)setImageUrl:(NSString *)imageUrl {
    _imageUrl = imageUrl;
    if (imageUrl.length >0) {
        [_centerImgView sd_setImageWithURL:[NSURL URLWithString:imageUrl]];
    }
}

@end
