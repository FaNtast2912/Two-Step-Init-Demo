//
//  main.swift
//  Two Step Init Testing
//
//  Created by Maksim Zakharov on 13.05.2025.
//

import Foundation

// Суперкласс
class Vehicle {
    var model: String        // свойство, объявленное здесь
    
    // Designated initializer суперкласса
    init(model: String) {
        print("Vehicle.init(phase 1) — инициализируем model = \(model)")
        self.model = model                    // SC1: инициализируем своё свойство
        // дальше, по SC2, мы можем уже работать с self
        print("Vehicle.init(phase 2) — теперь self доступен, model = \(self.model)")
    }
}

// Подкласс
class Car: Vehicle {
    var seats: Int           // новое свойство
    
    // Designated initializer подкласса
    init(model: String, seats: Int) {
        print("Car.init(model:seats) — начало фазы 1")
        self.seats = seats                  // SC1: инициализируем своё свойство
        print("Car.init(phase 1) — seats = \(seats)")
        
        super.init(model: model)            // SC2: вызываем суперкласс до доступа к inherited-свойствам
        
        // фаза 2 подкласса
        print("Car.init(phase 2) — уже можем менять и вызывать методы:")
        self.describe()
    }
    
    // Convenience initializer
    convenience init() {
        print("Car.convenience init — должен сначала делегировать")
        self.init(model: "Default", seats: 4)
        // SC3: здесь мы уже можем менять свойства
        print("Car.convenience init (phase 2) — изменяем модель:")
        self.model = "ConvenienceModel"
    }
    
    func describe() {
        print("This is a \(model) with \(seats) seats.")
    }
}

// Точка входа
print("=== Создаем Car через convenience init() ===")
let car1 = Car()
print("--- Итоговое состояние car1: model=\(car1.model), seats=\(car1.seats)\n")

print("=== Создаем Car напрямую через designated init ===")
let car2 = Car(model: "Sportster", seats: 2)
print("--- Итоговое состояние car2: model=\(car2.model), seats=\(car2.seats)")
