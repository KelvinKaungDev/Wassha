import SwiftUI

struct CheckoutView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 10) {
                RoundedRectangle(cornerRadius: 10)
                    .frame(height: 100)
                    .foregroundColor(Color("checkout-color"))
                    .overlay(
                        HStack {
                            VStack {
                                Image("credit-cards")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 50, height: 50)
                                Text("Wassha Wallet")
                                    .font(.caption)
                                    .bold()
                                    .foregroundColor(.white)
                            }
                            .padding()
                            
                            Spacer()
                            
                            
                            Divider()
                            
                            VStack(alignment:.center,spacing:20){
                                
                                
                                Text("150 Baht")
                                    .fontWeight(.heavy)
                                    .foregroundStyle(.white)
                                    .font(.system(size:23))
                                    .offset(y:10)
                                
                                
                                Button(action: {}, label: {
                                    
                                    RoundedRectangle(cornerRadius: 17)
                                        .stroke(lineWidth:2)
                                        .foregroundStyle(Color.white)
                                        .frame(width:120,height:40)
                                        .background(Color.wasshaTextColor)
                                        .cornerRadius(17)
                                        .shadow(color:.gray,radius:2)
                                        .overlay (
                                            HStack{
                                                Image("e-wallet 2")
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fit)
                                                    .frame(width:35,height:35)
                                                Text("Top Up")
                                                    .bold()
                                                    .foregroundStyle(.white)
                                                
                                            }
                                            
                                        )
                                    
                                })
                                
                                
                            }
                            .offset(x:-30)
                            
                            
                            //                            Image(systemName: "arrow.right")
                            //                                .foregroundColor(.blue)
                            //                            Spacer()
                            
                            //                            VStack {
                            //                                Image("shirt 1")
                            ////                                Text(self.locationVM.userAddress ?? self.editedAddress)
                            //
                            //                                    if self.editedAddress != "" {
                            //                                        Text(self.editedAddress)
                            //                                            .font(.caption)
                            //                                            .bold()
                            //                                            .foregroundColor(.blue)
                            //                                    } else {
                            //                                        Text(locationVM.userAddress ?? "Location Not Found")
                            //                                            .font(.caption)
                            //                                            .bold()
                            //                                            .foregroundColor(.blue)
                            //                                    }
                            //
                            //
                            //                            }
                            
                        }
                            .foregroundColor(.white)
                    )
                    .padding()
                
            }
            
            VStack(alignment: .leading) {
                Text("Payment")
                    .font(.title)
                    .foregroundColor(.white)
                Text("Please select payment option")
                    .font(.caption)
                    .foregroundColor(.white)
                HStack (spacing: 20) {
                    PaymentOptionButton(text: "Wassha Wallet", imageName: "wallet.pass")
                    PaymentOptionButton(text: "Credit/Debit", imageName: "creditcard")
                    PaymentOptionButton(text: "eWallet", imageName: "waveform.path.ecg")
                }
            }
            .padding()
            
            Spacer()
            
            Divider()
            
            HStack {
                Spacer()
                Text("Total")
                    .font(.title)
                Spacer()
                Text("฿150.00")
                    .font(.title3)
                    .foregroundColor(Color.blue)
                Spacer()
            }
            .background(.white)
            .cornerRadius(10)
            .padding()
            
            // Pay Now Button
            
            NavigationLink {
                VStack{
                    Spacer()
                    Image("payment_success_text")
                    Spacer()
                    Image("bubble")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 500, height: 200)
                        .ignoresSafeArea()
                    
                }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    .ignoresSafeArea()
                    .background(Color.wasshaBackgroundColor)
                
            } label: {
                RoundedRectangle(cornerRadius: 10)
                    .padding()
                    .frame(maxWidth: 400, maxHeight: 80)
                //                        .background(Color.blue)
                    .foregroundColor(Color.blue.opacity(0.65))
                    .overlay {
                        Text("Pay Now")
                            .foregroundStyle(.white)
                    }
            }
            
            Spacer()
        }
        .background(Color.wasshaBackgroundColor)
    }
}

struct PaymentOptionButton: View {
    var text: String
    var imageName: String
    
    var body: some View {
        Button(action: {
            // Code to select payment option
        }) {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.white, lineWidth: 1)
                .overlay(
                    VStack {
                        Image(systemName: imageName)
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.white)
                        Text(text)
                            .font(.caption)
                            .foregroundColor(.white)
                    }
                )
                .frame(width: 100, height: 100)
        }
    }
}

#Preview {
    NavigationStack{
        CheckoutView()
    }
}
