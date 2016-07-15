//
//  MunicipiosDetails.h
//  PushNotifications
//
//  Created by HaydeeHdz on 7/13/16.
//  Copyright © 2016 HaydeeHdz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "cellMunicipios.h"
#import "MunicipiosDetails.h"

@interface MunicipiosDetails : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lblMunicipio;
@property int estado;
@property int municipio;
@end
