import Foundation
import CoreData
import UIKit

func getFormattedCurrency(_ amount: Double) -> String{
    return String(format: "$%.2f", amount)
}

func getCoreDataContext() -> NSManagedObjectContext{
    return (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
}
