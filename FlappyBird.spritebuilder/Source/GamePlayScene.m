#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
    [self addObstacle];
    timeSinceObstacles = 0.0f;
}

-(void)update:(CCTime)delta
{
    // put update code here
    timeSinceObstacles += delta;
    if (timeSinceObstacles > 2.0f) {
        [self addObstacle];
        
        timeSinceObstacles = 0.0f;
    }
}

// put new methods here

-(void)touchBegan:(CCTouch*)touch withEvent:(CCTouchEvent *)event{
    [character flap];
}


@end
