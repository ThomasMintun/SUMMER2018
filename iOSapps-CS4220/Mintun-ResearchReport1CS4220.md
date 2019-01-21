# Core Location

Get a users location on Earth and the relative physical position of their device! 

### What Can I Do With Core Location?

  - Based on a nearby iBeacon determine a devices geographic location, altitude, orientation, or position. This freamework uses hardware on the device, wifi, cellular data, and more to gather the users locaiton. 
  - The user must authorize your app to use location services! Once the user grants or denies access that response is recorded and stored such that the the prompt is not shown to the user again. 
  - Return distance between users device and a specified location, get the time spent at a lcoation, arrival and departure time of locations, velocity at which the device is moving, instantaneous speed of a device, direction the device moving, acceleration of a device, orientation of user's device relative to true north, return description of geographic coordinate, and more.

### When To Use Core Location?
Use Core Location can provide context based services while in your app. One instance of this would be if you had an app that provided a map of an indoor area. The map of the indoor area would use wifi and public maps within the building, and the Core Location framwork could provide additional information about where you are within the building based on your location and building features. For example your app may offer a "request help" option while in certain areas of a building. There is a CLFloor class which specifies the floor of a building that a user's device is located on. For CLFloor the ground level is always zero, and the next floors increasing altitude are positive integers while floors below ground level are negative integers. To get the level: 
```swift
var level: Int { get }
```
App creaters may decide to offer a help option on certain floors of the building people are known to have troubles in. Core Location should be used by app developers looking to make use of a user's location. An excellent example of using this is PokemonGo game. The game uses Core Location to display a different map (Pokemon map) to users on top of a regular geo map of the earth. 

### How To Get Started?
The basic steps to user CoreLocation are to have your app request permission and verify that location services are available where the user is at, then your app will use the CLLocationManager to start and stop receiving location related events.
To get an iPhone users location:
1. Import MobileCoreServices framework in .h file
```swift
#import <MobileCoreServices/MobileCoreServices.h>
```
2. Add delegate CLLocationManagerDelegate to ViewController
```swift
@interface yourViewController : UIViewController<CLLocationManagerDelegate>
{
    CLLocationManager *locationManager;
    CLLocation *currentLocation;
}
```
3. Add a viewDidLoad method to class file
```swift
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self CurrentLocationIdentifier]; // call this method
}
```
4. Add a method to get the current location similair to this 
```swift
//------------ Current Location Address-----
-(void)CurrentLocationIdentifier
{
    //---- For getting current gps location
    locationManager = [CLLocationManager new];
    locationManager.delegate = self;
    locationManager.distanceFilter = kCLDistanceFilterNone;
    locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    [locationManager startUpdatingLocation];
    //------
}
- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    currentLocation = [locations objectAtIndex:0];
    [locationManager stopUpdatingLocation];
    CLGeocoder *geocoder = [[CLGeocoder alloc] init] ;
    [geocoder reverseGeocodeLocation:currentLocation completionHandler:^(NSArray *placemarks, NSError *error)
     {
         if (!(error))
         {
             CLPlacemark *placemark = [placemarks objectAtIndex:0];
            NSLog(@"\nCurrent Location Detected\n");
             NSLog(@"placemark %@",placemark);
             NSString *locatedAt = [[placemark.addressDictionary valueForKey:@"FormattedAddressLines"] componentsJoinedByString:@", "];
             NSString *Address = [[NSString alloc]initWithString:locatedAt];
             NSString *Area = [[NSString alloc]initWithString:placemark.locality];
             NSString *Country = [[NSString alloc]initWithString:placemark.country];
             NSString *CountryArea = [NSString stringWithFormat:@"%@, %@", Area,Country];
             NSLog(@"%@",CountryArea);
             NSString *Floor = [[NSString alloc]initWithString:placemark.floor];
         }
         else
         {
             NSLog(@"Geocode failed with error %@", error);
             NSLog(@"\nCurrent Location Not Detected\n");
             //return;
             CountryArea = NULL;
         }
         /*---- For more results 
         placemark.floor);
         placemark.region);
         placemark.country);
         placemark.locality); 
         placemark.name);
         placemark.ocean);
         placemark.postalCode);
         placemark.subLocality);
         placemark.location);
          ------*/
     }];
}
```