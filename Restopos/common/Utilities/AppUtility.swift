import Foundation

func getFormattedCurrency(_ amount: Double) -> String{
    return String(format: "$%.2f", amount)
}