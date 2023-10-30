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
        var drinks : Dish
        var desserts : Dish
        init(snacks: Dish , mainMenu: Dish, drinks: Dish, desserts: Dish) {
            self.snacks = snacks
            self.mainMenu = mainMenu
            self.drinks = drinks
            self.desserts = desserts
        }
    }
    
    
class Dish {
        var name: String = ""
        var cost: Double = 0.00
        
    }
    
    class Snacks : Dish {
        override init() {
            super.init()
            name = "Часнычныя грэнкі"
            cost = 10.00
        }
    }
    class MainMenu : Dish {
        override init() {
            super.init()
            name = "Рабрынкі"
            cost = 15.00
        }
    }
        class MainMenu2 : Dish {
            override init() {
                super.init()
                name = "Дранікі"
                cost = 12.00
            }
        }
        class Drinks : Dish {
            override init() {
                super.init()
                name = "Кава з малаком"
                cost = 6.00
            }
        }
        class Desserts : Dish {
            override init() {
                super.init()
                name = "Сырнікі"
                cost = 7.00
            }
        }
    
//        func price(_ dish: Dish) {
//            print ("\(dish.name) - \(dish.cost) руб.")
//        }
        
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    
    // Label 
    
    @IBOutlet weak var totalRevenue: UILabel!
    let model = Singletone.shared
    
    
    
    // начало смены
    @IBAction func startShift(_ sender: UIButton) {
        totalRevenue.text = String ("\(model.nullficationCount()) BYN")
    }
    // конец смены
    @IBAction func closeShift(_ sender: UIButton) {
        totalRevenue.text = String("\(model.count) BYN")

      
    }
    
    
    // позиции
    
    @IBAction func dish1(_ sender: UIButton) {
        let item = Snacks()
        model.increaseCount(item: item.cost)
        model.printAllOrders(item: item.name)
    }
    
    @IBAction func dish2(_ sender: UIButton) {
        let item = MainMenu()
        model.increaseCount(item: item.cost)
        model.printAllOrders(item: item.name)
    }
    
    @IBAction func dish3(_ sender: UIButton) {
        let item = MainMenu2()
        model.increaseCount(item: item.cost)
        model.printAllOrders(item: item.name)
    }
    
    @IBAction func dish4(_ sender: UIButton) {
        let item = Drinks()
        model.increaseCount(item: item.cost)
        model.printAllOrders(item: item.name)
    }
    
    @IBAction func dish5(_ sender: UIButton) {
        let item = Desserts()
        model.increaseCount(item: item.cost)
        model.printAllOrders(item: item.name)

    }
    
    
    
    }
    
    
