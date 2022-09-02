
/// User
public class User {

    /// User ID.
    public let id: String

    /// User creation date in Datetime.
    public let createdAt: String

    /// User update date in Datetime.
    public let updatedAt: String

    /// User name.
    public let name: String

    /// Hashed user password.
    public let password: String

    /// Password hashing algorithm.
    public let hash: String

    /// Password hashing algorithm configuration.
    public let hashOptions: Any

    /// User registration date in Datetime.
    public let registration: String

    /// User status. Pass `true` for enabled and `false` for disabled.
    public let status: Bool

    /// Datetime of the most recent password update
    public let passwordUpdate: String

    /// User email address.
    public let email: String

    /// User phone number in E.164 format.
    public let phone: String

    /// Email verification status.
    public let emailVerification: Bool

    /// Phone verification status.
    public let phoneVerification: Bool

    /// User preferences as a key-value object
    public let prefs: Preferences

    init(
        id: String,
        createdAt: String,
        updatedAt: String,
        name: String,
        password: String,
        hash: String,
        hashOptions: Any,
        registration: String,
        status: Bool,
        passwordUpdate: String,
        email: String,
        phone: String,
        emailVerification: Bool,
        phoneVerification: Bool,
        prefs: Preferences
    ) {
        self.id = id
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.name = name
        self.password = password
        self.hash = hash
        self.hashOptions = hashOptions
        self.registration = registration
        self.status = status
        self.passwordUpdate = passwordUpdate
        self.email = email
        self.phone = phone
        self.emailVerification = emailVerification
        self.phoneVerification = phoneVerification
        self.prefs = prefs
    }

    public static func from(map: [String: Any]) -> User {
        return User(
            id: map["$id"] as! String,
            createdAt: map["$createdAt"] as! String,
            updatedAt: map["$updatedAt"] as! String,
            name: map["name"] as! String,
            password: map["password"] as! String,
            hash: map["hash"] as! String,
            hashOptions: map["hashOptions"] as! Any,
            registration: map["registration"] as! String,
            status: map["status"] as! Bool,
            passwordUpdate: map["passwordUpdate"] as! String,
            email: map["email"] as! String,
            phone: map["phone"] as! String,
            emailVerification: map["emailVerification"] as! Bool,
            phoneVerification: map["phoneVerification"] as! Bool,
            prefs: Preferences.from(map: map["prefs"] as! [String: Any])
        )
    }

    public func toMap() -> [String: Any] {
        return [
            "$id": id as Any,
            "$createdAt": createdAt as Any,
            "$updatedAt": updatedAt as Any,
            "name": name as Any,
            "password": password as Any,
            "hash": hash as Any,
            "hashOptions": hashOptions as Any,
            "registration": registration as Any,
            "status": status as Any,
            "passwordUpdate": passwordUpdate as Any,
            "email": email as Any,
            "phone": phone as Any,
            "emailVerification": emailVerification as Any,
            "phoneVerification": phoneVerification as Any,
            "prefs": prefs.toMap() as Any
        ]
    }
                                                                                                                                                                                                                                                                                                                                                
}