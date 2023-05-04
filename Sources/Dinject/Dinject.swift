public final class Dinject {
    public static let shared = Dinject()
    
    private init() {
    }
    
    private var dependents:[String:Any] = [:]
}
