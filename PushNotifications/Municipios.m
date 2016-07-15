//
//  Municipios.m
//  PushNotifications
//
//  Created by HaydeeHdz on 7/13/16.
//  Copyright © 2016 HaydeeHdz. All rights reserved.
//

#import "Municipios.h"

@interface Municipios ()
@property NSMutableArray *municipios;
@property NSMutableArray *municipiosPhotos;
@property NSMutableArray *municipiosDescriptions;
@property int intEstadoSelected;
@property int intMunicipioSelected;
@end

@implementation Municipios
/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
}
//-------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//-------------------------------------------------------------------------------
- (void)initController {
    if (self.estado == 0)
    {
        //Aguascalientes
        self.municipios   = [[NSMutableArray alloc] initWithObjects: @"Calvillo", @"Cosio", @"Jesus Maria", @"Pabellon de Arteaga", @"San Francisco de los Romo", nil];
        self.municipiosPhotos   = [[NSMutableArray alloc] initWithObjects: @"calvillo.jpg", @"cosio.jpg", @"jesus_maria.jpg", @"pabellon_de_arteaga.jpg", @"san_francisco_de_los_romo.jpg",nil];
    }
}
/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.municipios.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 180;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    cellMunicipios *cell = (cellMunicipios *)[tableView dequeueReusableCellWithIdentifier:@"cellMunicipios"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"cellMunicipios" bundle:nil] forCellReuseIdentifier:@"cellMunicipios"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellMunicipios"];
    }
    //Fill cell with info from arrays
    cell.lblMunicipio.text       = self.municipios[indexPath.row];
    cell.imgMunicipio.image   = [UIImage imageNamed:self.municipiosPhotos[indexPath.row]];
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    self.intMunicipioSelected = (int)indexPath.row;
    self.intEstadoSelected = self.estado;
    [self performSegueWithIdentifier:@"MunicipioDetail" sender:self];
}
/**********************************************************************************************/
#pragma mark - Navigation
/**********************************************************************************************/
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    //if ([segue.destinationViewController isKindOfClass:[MunicipiosDetails class]]) {
      //  MunicipiosDetails *destination     = [segue destinationViewController];
        //destination.estado        = self.intEstadoSelected;
        //destination.municipio = self.intMunicipioSelected;
    //}
}

@end
