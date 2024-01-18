import Foundation
import CoreData
import UIKit

func getCoreDataContext() -> NSManagedObjectContext{
    return (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
}
