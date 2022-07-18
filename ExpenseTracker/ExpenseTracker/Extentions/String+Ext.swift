import Foundation

extension String {
	func dateParsed() -> Date {
		guard
			let parsedDate = DateFormatter.allNumericUsa.date(from: self)
		else {
			return Date()
		}
		
		return parsedDate
	}
}
