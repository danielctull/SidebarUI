
import SwiftUI

extension View {

    @ViewBuilder
    func align(_ alignment: HorizontalAlignment) -> some View {

        HStack {

            if alignment == .trailing {
                Spacer(minLength: 0)
            }

            self

            if alignment == .leading {
                Spacer(minLength: 0)
            }
        }
    }
}
