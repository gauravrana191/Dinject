//File for dependency injection

import Foundation

public final class Dinject {
    public static let shared = Dinject()
    
    private init() {
    }
    
    private var dependents:[String:Any] = [:]
}

extension Dinject:DinjectProtocol {
    public func add<T>(type: T.Type, dependent: T) {
        let key = dependentKey(type: type)
        dependents[key] = dependent
    }
    
    public func solution<T>(type: T.Type) -> T {
        let key = dependentKey(type: type)
        guard let dependent = dependents[key] as? T else {
            preconditionFailure("No dependent added yet")
        }
        return dependent
    }
    
    private func dependentKey<T>(type:T.Type)-> String {
        String(describing: type)
    }
}
