import Foundation

class fǾЈƤɌȵЯЯȝ {
    
    private let userKey = "user"
    private let isLogin = "login"
    
    // login
    func ґȖVŮȊКƊöОƲ() { // login
        let defaults = UserDefaults.standard
        defaults.set(true, forKey: isLogin)
    }
    
    
    func ȈŢǮėΣБƆȉúĖ() -> Bool { // is logined
        let defaults = UserDefaults.standard
        return defaults.bool(forKey: isLogin)
    }
    
    
    func KŶЬąша́ƧЬȕЀ() { // log out
        let defaults = UserDefaults.standard
        defaults.set(false, forKey: isLogin)
    }
    
}


