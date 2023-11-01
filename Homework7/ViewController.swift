//
//  ViewController.swift
//  Homework7
//
//  Created by Юлия Клименкова on 30.10.23.
//





import UIKit

class Singletone {
    
    static let shared = Singletone()
    private (set) var count: Double = 0.0
    private init() {}
    
    func nullficationCount() -> Double{
        count = 0.0
        return (count)
    }

    func increaseCount(item : Double){
        count += item
        }
    func printAllOrders(item : String){
        print(item)
        }
    }
class Menu {
    
    var snacks : Dish
    var mainMenu : Dish
    var mainMenu2: Dish
    var drinks : Dish
    var desserts : Dish
    init(snacks: Dish, mainMenu: Dish,mainMenu2: Dish, drinks: Dish, desserts: Dish) {
        self.snacks = snacks
        self.mainMenu = mainMenu
        self.mainMenu2 = mainMenu2
        self.drinks = drinks
        self.desserts = desserts
    }
}

class Dish {
        var name: String = ""
        var cost: Double = 0.00
    init(name: String, cost: Double) {
        self.name = name
        self.cost = cost
    }
        
    }
    
    class Snacks : Dish {
        override init(name: String, cost:Double) {
            super.init(name: "Часнычныя грэнкі", cost: 10.00)
        }
    }
    class MainMenu : Dish {
        override init(name:String, cost:Double) {
            super.init(name: "Рабрынкі", cost: 15.00)
        }
    }
    class MainMenu2 : Dish {
            override init(name:String, cost:Double) {
                super.init(name: "Дранікі", cost: 12.00)

            }
        }
    class Drinks : Dish {
            override init(name:String, cost:Double) {
                super.init(name: "Кава з малаком", cost: 6.00)

            }
        }
    class Desserts : Dish {
            override init(name:String, cost:Double) {
                super.init(name: "Сырнікі", cost: 7.00)

            }
        }
    

        
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    
    // Label 
    
    @IBOutlet weak var totalRevenue: UILabel!
    let restaurant = Singletone.shared
    
    
    
    // начало смены
    @IBAction func startShift(_ sender: UIButton) {
        totalRevenue.text = String ("\(restaurant.nullficationCount()) BYN")
    }
    // конец смены
    @IBAction func closeShift(_ sender: UIButton) {
        totalRevenue.text = String("\(restaurant.count) BYN")
    }
    
    // позиции
    
    @IBAction func dish1(_ sender: UIButton) {
        restaurant.increaseCount(item: Snacks(name: "Часнычныя грэнкі", cost: 10.00).cost)
        restaurant.printAllOrders(item: Snacks(name: "Часнычныя грэнкі", cost: 10.00).name)
    }

    @IBAction func dish2(_ sender: UIButton) {
        restaurant.increaseCount(item: MainMenu(name: "Рабрынкі", cost: 15.00).cost)
        restaurant.printAllOrders(item: MainMenu(name: "Рабрынкі", cost: 15.00).name)
    }

    @IBAction func dish3(_ sender: UIButton) {
        restaurant.increaseCount(item: MainMenu2(name: "Дранікі", cost: 12.00).cost)
        restaurant.printAllOrders(item: MainMenu2(name: "Дранікі", cost: 12.00).name)
    }
    
    @IBAction func dish4(_ sender: UIButton) {
        restaurant.increaseCount(item:Drinks(name: "Кава з малаком", cost: 6.00).cost)
        restaurant.printAllOrders(item: Drinks(name: "Кава з малаком", cost: 6.00).name)
    }
    
    @IBAction func dish5(_ sender: UIButton) {
        restaurant.increaseCount(item: Desserts(name: "Сырнікі", cost: 7.00).cost)
        restaurant.printAllOrders(item: Desserts(name: "Сырнікі", cost: 7.00).name)

    }
    }
    
    
