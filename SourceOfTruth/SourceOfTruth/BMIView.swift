//
//  BMIView.swift
//  SourceOfTruth
//
//  Created by user on 2020/11/6.
//

import SwiftUI

struct BMIView: View {
    
    @State var Height = ""
    @State var Weight = ""
    @State var bmi = ""
    
    var body: some View {
        
        VStack{
            HStack {
                Text("Weight")
                TextField("Input Height", text: $Weight)
            }
            HStack {
                Text("Height")
                TextField("Input Height", text: $Height)
            }
            HStack {
                Text("BMI")
                Text(bmi)
            }
            
            Button(action: {
                let WeightValue = Double(self.Weight)
                let HeightValue = Double(self.Height)
                let ResultValue: Double
                
                if WeightValue != nil && HeightValue != nil{
                    ResultValue = WeightValue! / (HeightValue! * HeightValue!)
                    self.bmi = String(ResultValue)
                } else {
                    self.bmi = "請輸入數字"
                }
            }) {
                Text("計算結果")
            }
            
        }
    }
}

struct BMIView_Previews: PreviewProvider {
    static var previews: some View {
        BMIView()
    }
}
