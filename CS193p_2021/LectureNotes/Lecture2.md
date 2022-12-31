# 다룬 것

HStack
func
define new view
```swift
struct CardView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .stroke(lineWidth: 3)
            Text("Hello, world!")
        }
    }
}
```