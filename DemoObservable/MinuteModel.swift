
struct MinuteModel {
    var minutes: Double
    
    var increment: MinuteModel {
        MinuteModel(minutes: self.minutes + 1)
    }
}
