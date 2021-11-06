# GasLaw

### masOS project about Ideal Gas Law for [SwiftUIJam](https://www.swiftuijam.com)

This SwiftUI macOS app models the [Ideal Gas Law](https://en.wikipedia.org/wiki/Ideal_gas_law) in a engine cylinder.

Our starting point:

- Atmospheric pressure, 101.325 kPa
- Volume of a cylinder, 400 cm3
- Room temperature, 20ºC

These values are added in `Constants/Units.swift`

The gauges drawings were made in [Figma](https://www.figma.com), imported into [PaintCode](https://www.paintcodeapp.com) as .svg. The drawing codes can be found in `Views/Gauges.swift`.

To show the drawing code `NSRepresentableView` is used.

These two Stackoverflow articles helped me:

-[SwiftUI NSViewRepresentable can't read data from @Publisher](https://stackoverflow.com/questions/66982859/swiftui-nsviewrepresentable-cant-read-data-from-publisher)

-[How do I vertically center an NSTextView in a SwiftUI view with NSViewRepresentable?](https://stackoverflow.com/questions/61090854/how-do-i-vertically-center-an-nstextview-in-a-swiftui-view-with-nsviewrepresenta)
