import UIKit
import GoogleMaps

class ViewController: UIViewController {

    var placePicker: GMSPlacePicker!
    
  override func viewDidLoad() {
    super.viewDidLoad()
  }

    @IBAction func showPicker(sender: AnyObject) {
        let center = CLLocationCoordinate2DMake(51.5108396, -0.0922251)
        let northEast = CLLocationCoordinate2DMake(center.latitude + 0.001, center.longitude + 0.001)
        let southWest = CLLocationCoordinate2DMake(center.latitude - 0.001, center.longitude - 0.001)
        let viewport = GMSCoordinateBounds(coordinate: northEast, coordinate: southWest)
        let config = GMSPlacePickerConfig(viewport: viewport)
        
        placePicker = GMSPlacePicker(config: config)
        placePicker.pickPlaceWithCallback({ (place: GMSPlace?, error: NSError?) -> Void in
            print(place)
        })
    }
}

