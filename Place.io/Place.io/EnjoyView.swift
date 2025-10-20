import SwiftUI

struct EnjoyView: View {
    @State private var offset = CGSize.zero
    @State private var dragAmount = CGSize.zero
    @State private var swipeDirection: SwipeDirection?

    enum SwipeDirection {
        case left, right, none
    }
    
    var body: some View {
        NavigationStack {
            ZStack {
                // Imagem e informações
                VStack {
                    Spacer()
                    ZStack {
                        VStack{
                            AsyncImage(url: URL(string: "https://i0.wp.com/blogdokempes.com.br/wp-content/uploads/2022/04/Romeirao-Cima-1.jpg?resize=616%2C760&ssl=1")) { image in
                                image.resizable()
                            } placeholder: {
                                ProgressView()
                            }
                            .frame(height: 600)
                            .cornerRadius(10)
                            .padding()
                            Spacer()
                        }
                        
                        VStack {
                            Spacer(minLength: 500)
                            Text("Local Name")
                                .font(.title)
                                .bold()
                            
                            Text("Description")
                            Spacer()
                        }
                        .foregroundStyle(Color.white)
                        .shadow(radius: 10)
                    }
                    .offset(x: offset.width + dragAmount.width, y: offset.height + dragAmount.height)
                    .gesture(
                        DragGesture()
                            .onChanged { value in
                                self.dragAmount = value.translation
                            }
                            .onEnded { value in
                                withAnimation {
                                    if abs(value.translation.width) > 100 {
                                        swipeDirection = value.translation.width > 0 ? .right : .left
                                        self.offset.width += value.translation.width
                                        self.dragAmount = .zero
                                    } else {
                                        swipeDirection = .none
                                        self.dragAmount = .zero
                                    }
                                }
                            }
                    )
                    .animation(.spring(), value: offset)
                }
                
                // Indicador de deslizar
                VStack {
                    Spacer()
                    ZStack {
                        Circle()
                            .foregroundStyle(Color.white)
                        
                        Image(systemName: swipeDirection == .right ? "checkmark" : swipeDirection == .left ? "xmark" : "hand.point.right.fill")
                            .resizable()
                            .padding()
                            .foregroundColor(swipeDirection == .right ? .green : swipeDirection == .left ? .red : .gray)
                    }
                    .frame(width: 75, height: 75)
                    Spacer(minLength: 520)
                }
            }
        }
    }
}

#Preview {
    EnjoyView()
}
