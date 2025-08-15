//
//  İĐюôŘMВńHĨ.swift
//  Superformix
//
//  Created by admin on 14.08.2025.
//

import UIKit
import Lottie


class İĐюôŘMВńHĨ: UIViewController {
    
    private var ÌšгȑЗМǵţВô: LottieAnimationView? // anim
    @IBOutlet weak var ŗǝЁşǃƖǭɈÎĎ: UILabel! // order num
    
    @IBAction func НøКЌŝVƜЁďЕ(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
    return .portrait
    }
    
    var orderNumText = " "
    //MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        orderNumText = "#\(Int.random(in: 12000000...999999999))"
        ŗǝЁşǃƖǭɈÎĎ.text = orderNumText
        
        setupAnimation()
        saveOrder()
    }
    
    //MARK: - save order
    
    func saveOrder() {
        let cardManager = sоbūwÍŠȳlМȴ()
        let allCard = cardManager.ȳƵȜýĪхĽƗũì()
        
        
        let orderManager = ɇşğƒƧįƜЮАŚ()
        orderManager.ÃȃƬǿĭĕɏųĥš(
            ЇШǵƸǻÂǫKƜё(
                image: allCard.first?.image ?? "jacket1",
                items: allCard.count,
                priceAll: calculateTotalPrice(for: allCard),
                orderNumber: orderNumText
            )
        )
    }
    
    
    
    func calculateTotalPrice(for cards: [УйȫǻȻČУÁЬÁ]) -> Float {
        return cards.reduce(0) { $0 + $1.price }
    }
    
    
    //MARK: - anim
    private func setupAnimation() {
        ÌšгȑЗМǵţВô = LottieAnimationView(name: "orderConfirm")
        
        guard let orderConfirmAnimation = ÌšгȑЗМǵţВô else {
            print("Анимация не найдена")
            return
        }
        
        // Устанавливаем размеры и позицию
        orderConfirmAnimation.translatesAutoresizingMaskIntoConstraints = false
        orderConfirmAnimation.loopMode = .playOnce
        orderConfirmAnimation.animationSpeed = 1.0
        
        view.addSubview(orderConfirmAnimation)
        
        // Добавляем ограничения для размещения в центре
        NSLayoutConstraint.activate([
            orderConfirmAnimation.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            orderConfirmAnimation.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100),
            orderConfirmAnimation.widthAnchor.constraint(equalToConstant: 150),
            orderConfirmAnimation.heightAnchor.constraint(equalToConstant: 150)
        ])
        
        // Запускаем анимацию
        orderConfirmAnimation.play { finished in
            if finished {
                print("Анимация завершена")
            }
        }
    }
    
}
