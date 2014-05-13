
#import "UISegmentedControl+RuntimeAttribute.h"

@implementation UISegmentedControl (IBConfiguration)

-(void)setFontIBName:(NSString*)name
{
    CGFloat cgSize = [self.fontIBSize floatValue];
    [self setTitleTextAttributes:@{NSFontAttributeName:[UIFont fontWithName:name size:cgSize]} forState:UIControlStateNormal];
}

-(NSString *)fontIBName
{
    NSDictionary *attributes = [self titleTextAttributesForState:UIControlStateNormal];
    UIFont *font = attributes[NSFontAttributeName];
    return font.familyName;
}

-(void)setFontIBSize:(NSNumber *)size
{
    CGFloat cgSize = [size floatValue];
    [self setTitleTextAttributes:@{NSFontAttributeName:[UIFont fontWithName:self.fontIBName size:cgSize]} forState:UIControlStateNormal];
}

-(NSNumber *)fontIBSize
{
    NSDictionary *attributes = [self titleTextAttributesForState:UIControlStateNormal];
    UIFont *font = attributes[NSFontAttributeName];
    return (font != nil) ? @(font.pointSize) : @15.0;
}


@end
