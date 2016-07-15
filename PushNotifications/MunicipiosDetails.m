//
//  MunicipiosDetails.m
//  PushNotifications
//
//  Created by HaydeeHdz on 7/13/16.
//  Copyright © 2016 HaydeeHdz. All rights reserved.
//

#import "MunicipiosDetails.h"
@import GoogleMaps;

@interface MunicipiosDetails ()
@property NSMutableArray *municipioDetail;
@property NSMutableArray *municipioDetailPhoto;
@property NSMutableArray *municipioDescription;

@end

@implementation MunicipiosDetails
{
    GMSMapView *mapView_;
    GMSCameraPosition *camera;
    long latitud;
    long longitud;
    NSString *tittle;
    GMSMarker *marker;
}
/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    //[self initController];
    [self createMap];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-------------------------------------------------------------------------------
- (void)createMap {
    //Creates a marker in the center of the map.
    marker = [[GMSMarker alloc] init];
    
    // Create a GMSCameraPosition that tells the map to display the
    latitud = 0;
    longitud = 0;
    if (self.estado == 0)
    {
        if (self.municipio == 0)
        {
            latitud = 21.846954;
            longitud = -102.716095;
            tittle = @"Calvillo";
        }
        else if (self.municipio == 1)
        {
            latitud = 22.365802;
            longitud = -102.299222;
            tittle = @"Cosio";
        }
        else if (self.municipio == 2)
        {
            latitud = 21.961825;
            longitud = -102.344206;
            tittle = @"Jesus Maria";
        }
        else if (self.municipio == 3)
        {
            latitud = 22.142999;
            longitud = -102.274159;
            tittle = @"Pabellon de Arteaga";
        }
        else if (self.municipio == 4)
        {
            latitud = 22.073417;
            longitud = -102.268927;
            tittle = @"San Francisco de los Romo";
        }
    }
    camera = [GMSCameraPosition cameraWithLatitude:latitud longitude:longitud zoom:18];
    mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView_.myLocationEnabled = YES;
    marker.position = CLLocationCoordinate2DMake(latitud, longitud);
    marker.title = tittle;
    marker.snippet = @"Centro";
    marker.map = mapView_;
    self.view = mapView_;
}
//-------------------------------------------------------------------------------
- (void)initController {
    if (self.estado == 0)
    {
        if (self.municipio == 0)
        {
            self.lblMunicipio.text  = @"Calvillo";
        }
        else if (self.municipio == 1)
        {
            self.lblMunicipio.text  = @"Cosio";
        }
        else if (self.municipio == 2)
        {
            self.lblMunicipio.text  = @"Jesus Maria";
        }
        else if (self.municipio == 3)
        {
            self.lblMunicipio.text  = @"Pabellon de Arteaga";
        }
        else if (self.municipio == 4)
        {
            self.lblMunicipio.text  = @"San Francisco de los Romo";
        }
    }
}
@end
