import UIKit


class uȸȏȱÓОЗŠQĐ: UITabBarController { // uȸȏȱÓОЗŠQĐ
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        øƤЖǴǕȩĶƚОŹ()
    }
    
    private func øƤЖǴǕȩĶƚОŹ() {
        tabBar.isTranslucent = true
        tabBar.backgroundImage = UIImage()
        tabBar.shadowImage = UIImage()
        tabBar.selectedImageTintColor = .white
        
        let ɄǧИţхÂǥИȒȶ = UIImageView(image: UIImage(named: "nav"))
        ɄǧИţхÂǥИȒȶ.contentMode = .scaleAspectFill
        ɄǧИţхÂǥИȒȶ.translatesAutoresizingMaskIntoConstraints = false
        
        tabBar.insertSubview(ɄǧИţхÂǥИȒȶ, at: 0)
        
        
        let ŊÊLƉЁbǑȐǱǎ = ǝñàƕȪjƳJƸз()
        var ǑȐǱǎ = 0
        if ŊÊLƉЁbǑȐǱǎ > 800 {
            ǑȐǱǎ = -30
        } else {
            ǑȐǱǎ = -5
        }
        
        NSLayoutConstraint.activate([
            ɄǧИţхÂǥИȒȶ.widthAnchor.constraint(equalTo: tabBar.widthAnchor, multiplier: 0.95),
            ɄǧИţхÂǥИȒȶ.centerXAnchor.constraint(equalTo: tabBar.centerXAnchor),
            ɄǧИţхÂǥИȒȶ.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: CGFloat(ǑȐǱǎ)),
            ɄǧИţхÂǥИȒȶ.heightAnchor.constraint(equalToConstant: tabBar.frame.height + view.safeAreaInsets.bottom)
        ])
    }
    
    
 
    private func ǝñàƕȪjƳJƸз() -> CGFloat {
        let d33ȪjƳJƸз = UIScreen.main.bounds
        let ñ9O_jƳз = d33ȪjƳJƸз.size.height
        return ñ9O_jƳз
    }
    
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        .portrait
    }
    
    
}
