//
//  PenSketchTool.m
//  Sketch
//
//  Created by Keshav on 08/04/17.
//  Copyright © 2017 Particle41. All rights reserved.
//

#import "PenSketchTool.h"
#import "Paint.h"

@implementation PenSketchTool
{
    Paint *paint;
}

-(instancetype)initWithTouchView:(UIView *)touchView
{
    self = [super initWithTouchView:touchView];

    paint = [[Paint alloc] init];

    [self setToolColor:[UIColor colorWithRed:0.95 green:0.11 blue:0.11 alpha:1.0]];
    [self setToolThickness:3];

    [self.path setLineCapStyle:kCGLineCapRound];
    [self.path setLineJoinStyle:kCGLineJoinRound];


    return self;
}

-(void)render
{
    [paint.color setStroke];
    [self.path stroke];
}

-(void)setToolThickness:(CGFloat)thickness
{
    paint.thickness = thickness;
    [self.path setLineWidth:paint.thickness];
}

-(CGFloat)getToolThickness
{
    return paint.thickness;
}

-(void)setToolColor:(UIColor *)color
{
    paint.color = color;
}

-(UIColor *)getToolColor
{
    return paint.color;
}

@end
