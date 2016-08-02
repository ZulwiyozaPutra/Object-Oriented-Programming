/*:
 ![Make School Banner](./swift_banner.png)
 # An automatic Zookeeper

 Zoe went in to pet the bees on her lunch break and nobody has seen her since! The animals haven't been fed, and they're getting hungry. Let's make your program more useful so that it can help any zookeeper keep track of all the animals they feed each day.

 But first, let's copy over your animal classes from the previous page...

 */

// Copy your Animal class here
class Animal {
    var name: String
    var favoriteFood: String
    
    init(name: String, favoriteFood: String) {
        self.name = name
        self.favoriteFood = favoriteFood
    }
    
    func sleep() {
        print("\(self.name) sleeps for 8 hours")
    }
    
    func eat(food: String) {
        
        print("\(self.name) eats \(food)")
        
        if food == favoriteFood {
            print("YUM!!! \(self.name) wants more \(favoriteFood)")
            
        } else {
            sleep()
        }
    }
}

// Copy your Tiger class here
class Tiger: Animal {
    
    override init(name: String, favoriteFood: String) {
        super.init(name: name, favoriteFood : "meat")
    }
}

// Copy your Bear class here
class Bear: Animal {
    
    override init(name: String, favoriteFood: String) {
        super.init(name: name, favoriteFood : "fish")
    }
    
    override func sleep() {
        
        print("\(self.name) hibernates for 4 month")
    }

}

// Copy your Unicorn class here
class Unicorn: Animal {
    
    override init(name: String, favoriteFood: String) {
        super.init(name: name, favoriteFood: "marshmallows")
    }
    
    override func sleep() {
        print("\(name) sleeps in a cloud")
        
    }

}

// Copy your Giraffe class here
class Giraffe: Animal {
    
    override init(name: String, favoriteFood: String) {
        // don't forget to correct the call to the superclass initializer!
        super.init(name: name, favoriteFood: "leaves")
    }
    
    override func eat(food: String) {
        if food == favoriteFood {
            print("\(self.name) eats \(food)")
            print("YUM!!! \(self.name) wants more \(food)")
        } else if food != favoriteFood {
            print("YUCK!!! \(self.name) will not eat \(food)")
        }
        // don't forget a call to the superclass eat function!
    }

}

// Copy your Bee class here
class Bee: Animal {
    
    override init(name: String, favoriteFood: String) {
        super.init(name: name, favoriteFood: "pollen")
    }
    override func sleep() {
        print("\(self.name) never sleep")
    }
    
    override func eat(food: String) {
        if food == favoriteFood {
            print("\(self.name) eats \(food)")
            print("YUM!!! \(self.name) wants more \(food)")
            sleep()
        } else {
            print("YUCK!!! \(self.name) will note eat \(food)")
        }
    }


}

/*:

 # Zookeeper

 Great! Now, we're ready to create a `Zookeeper` class that contains a `name` instance variable and an initializer method that sets `name` using an argument. A zookeeper needs to feed many animals each day, so let's add a `feedAnimals` method, which should take two arguments: `animals` – an array of `Animal`s, and `food` – a string. This method should first print `"<name> is feeding <food> to <animals.count> animals"`, then iterate over the array of animals and call each animal's `eat` method, passing the value of `food` as the argument.

 Finally, call this `feedAnimals` method, using an array containing an instance of each animal, and your own favorite food.

 - callout(Challenge): Finish the `Zookeeper` class below!

 */

// Implement the Zookeeper class here
class Zookeeper {
    var name: String
    var animals: [Animal]
    
    init(animals: [Animal], name: String) {
        // save name to an instance variable
        self.name = name
        self.animals = animals
        

    }

    func feedAnimals(animals: [Animal], food: String) {
        // complete your feedAnimals function here.
        print("\(self.name) is feeding \(food) to \(animals.count)")

    }
}

/*:
 ## Testing

 The test code below should output exactly this:

     ZoeBot is feeding meat to 5 animals
     Tigger eats meat
     YUM!!! Tigger wants more meat
     Pooh eats meat
     Pooh hibernates for 4 months
     Rarity eats meat
     Rarity sleeps in a cloud
     YUCK!!! Gemma will not eat meat
     YUCK!!! Stinger will not eat meat

 - callout(Hint): Create a `Zookeeper` instance with the name `"ZoeBot"`. Create an `Array` containing the animals from the previous page's test code. Pass the array to the `Zookeeper`'s `feedAnimals` method along with `"meat"`.

 */

let animals: [Animal] = [
    Tiger(name: "Tigger", favoriteFood: "meat"),
    Bear(name: "Pooh", favoriteFood: "fish"),
    Unicorn(name: "Rarity", favoriteFood: "marshmallows"),
    Giraffe(name: "Gemma", favoriteFood: "leaves"),
    Bee(name: "Stinger", favoriteFood: "pollen")
]

let zookeeper = Zookeeper(animals: animals, name: "ZoeBot")
zookeeper.feedAnimals(animals, food: "meat")
let tigger = Tiger(name: "Tigger", favoriteFood: "meat")
tigger.eat("meat")
let pooh = Bear(name: "Pooh", favoriteFood: "fish")
pooh.eat("meat")
let rarity = Unicorn(name: "Rarity", favoriteFood: "marshmallow")
rarity.eat("meat")
let gemma = Giraffe(name: "Gemma", favoriteFood: "leaves")
gemma.eat("meat")
let stinger = Bee(name: "Stinger", favoriteFood: "pollen")
stinger.eat("meat")

//: [Previous](@previous) | [Next](@next)
