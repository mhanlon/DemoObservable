import SwiftUI

public class MinutesController: ObservableObject {
    @Published private var minutesModel = MinuteModel(minutes: 0)
        
    public var currentValue: Double {
        self.minutesModel.minutes
    }
    // Timer code to increment the minutes in the model implemented here...
    public init() {
        
    }
    
    public func startTimer() {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            self.minutesModel = self.minutesModel.increment
            print("firing... \(self.currentValue)")
        }
    }
}
