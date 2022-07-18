import Foundation

extension DateFormatter {
	static let allNumericUsa: DateFormatter = {
		let formatter = DateFormatter()
		formatter.dateFormat = "DD/MM/YYYY"

		return formatter
	}()
}
