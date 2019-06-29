class Mammal {
  constructor(sound) {
    this.sound = sound
  }
  talk() {
    return this.sound
  }
}
class Dog extends Mammal {
  constructor() {
    super("bark bark")
  }
  smile() {
    return "grin"
  }
}
let fluffykins = new Mammal("woof")
let lou = new Dog()
let x = fluffykins.talk()
