# Swift Two-Phase Initialization Explained 🧠

Understanding **two-phase initialization** in Swift is crucial for writing safe and predictable code — especially when working with inheritance.

This repository demonstrates how Swift ensures that all stored properties are initialized before the object becomes usable. The example shows a simple class hierarchy (`Vehicle` → `Car`) to illustrate the exact order of execution during initialization.

---

## 🔍 What’s Inside?

### Classes:
- `Vehicle`: Base class with a single property `model`
- `Car`: Subclass with an additional property `seats`, demonstrating both designated and convenience initializers

The project includes print statements that clearly show:
- When each phase of initialization begins
- How properties are initialized step-by-step
- Why and when you can/cannot access `self` or inherited properties

## 🧪 Try it yourself!

Just run the playground or the main file — see how the logs unfold and verify your understanding of:

- Initializer delegation
- Property initialization order
- Safety checks enforced by Swift (SC1–SC4)

---

## ✅ Swift Safety Checks Covered

| Rule | Description |
|------|-------------|
| SC1 | All properties must be initialized before delegating up |
| SC2 | Cannot use inherited properties until after `super.init()` |
| SC3 | Convenience initializers must delegate before touching any properties |
| SC4 | No use of `self` until Phase 1 completes |

---

## 📚 Learn More

- [Swift.org - Initialization](https://docs.swift.org/swift-book/LanguageGuide/Initialization.html)
- [Apple Developer Documentation](https://developer.apple.com/documentation/)

---

Got questions? Want more deep dives into Swift mechanics?  
Follow along and stay tuned for more examples and explanations!  
#Swift #iOSDevelopment #TwoPhaseInitialization #SwiftLang #CodeExample

--- 

Если ты хочешь, я могу адаптировать README под конкретный стиль или добавить ссылку на статью, когда она будет опубликована.
