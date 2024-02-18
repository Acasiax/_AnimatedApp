//
//  PlanetDetailView.swift
//  HeroBag
//
//  Created by 이윤지 on 2023/06/26.


import SwiftUI

struct PlanetDetailView: View {
    
    @Binding var planetData : PlanetModel!
    @Binding var show : Bool
    var animation: Namespace.ID
    @State var selectedColor = Color.red
    
    @State var count = 0
    //원래 <750
    @State var isSmallDevice = UIScreen.main.bounds.height < 910
    
    var body: some View {
        
        ScrollView{
            
            VStack{
                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 5){
                        
                        Button(action: {
                            
                            withAnimation(.easeOut){show.toggle()}
                            
                        }) {
                            
                            Image(systemName: "chevron.left")
                                .font(.title)
                                .foregroundColor(.white)
                                .padding(.top)
                        }
                        
                        Text("오로라 행성")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Text(planetData.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                        
                        
                    }
                    
                    Spacer(minLength: 0)
                    Spacer()
                    Button(action: {}) {
                        
                        Image(systemName: "heart")
                            .font(.title)
                            .foregroundColor(.white)
                        
                    }
                    
                }
                
                .padding()
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                
                
                
                HStack(spacing: 10){
                    
                    VStack(alignment: .leading, spacing: 6){
                        Text("설립일")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Text(planetData.price)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                        
                        
                    }
                    
                    Image(planetData.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    //히어로 애니메이션
                        .matchedGeometryEffect(id: planetData.image, in: animation)
                    
                }
                .padding()
                .padding(.top,10)
                .zIndex(1)
                
                //  VStack{
                
                
                ScrollView{
                    //👊🏿
                    // Spacer(minLength: 40)
                    //                    ScrollView(isSmallDevice ? .vertical : .init(), showsIndicators: false){
                    
                    HStack{
                        
                        VStack(alignment: .leading, spacing: -8) {
                            
                            Text("역사와 가치")
                                .fontWeight(.bold)
                                .foregroundColor(.gray)
                            
                            // HStack(spacing: 15){
                            
                            //                                ColorButton(color: Color(bagData.image), selectedColor: $selectedColor)
                            //                                ColorButton(color: Color.yellow, selectedColor: $selectedColor)
                            //                                ColorButton(color: Color.black, selectedColor: $selectedColor)
                            
                            //   }
                        }
                        
                        Spacer(minLength: 0)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            
                            Text("설립")
                                .fontWeight(.semibold)
                                .foregroundColor(.black)
                            
                            Text(planetData.price)
                                .fontWeight(.heavy)
                                .foregroundColor(.black)
                            
                        }
                    }
                    
                    .padding(.horizontal)
                    .padding(.top,isSmallDevice ? 0 : -20)
                    
                    Text("\(planetData.planetHistory)")
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                        .padding()
                    
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {}) {
                        
                        Text("자세히 보기")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                            .padding(.vertical)
                            .frame(width: UIScreen.main.bounds.width - 30)
                            .background(Color.purple)
                        //  .clipShape(Circle())
                        
                    }
                    .padding(.top)
                    .padding(.bottom,70)
                    .padding(.bottom,UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 15 : 0)
                    
                    
                    
                }
                //  } //vstack full stop
                
                //☘️
                
                .background(
                    Color.white
                        .clipShape(CustomCorner())
                        .padding(.top,isSmallDevice ? -60 : -100)
                )
                
                .zIndex(0)
            }
        }
            .background(Color.black.ignoresSafeArea(.all, edges: .top))
            //.background(Color(bagData.image).ignoresSafeArea(.all, edges: .top))
            
            //맨뒤에 또다른 맨뒷배경 있는데 그거를 블랙으로 해놓았음
            .background(Color.black.ignoresSafeArea(.all, edges: .bottom))
        
            .onAppear {
                //첫번쨰 컬러는 이미지나 백의 색깔잉래
                selectedColor = Color(planetData.image)
                
            }
        }
    }
    

    
    struct PlanetDetailView_Previews: PreviewProvider {
        static var previews: some View {
            if #available(iOS 16.0, *) {
                PlanetHome( data: brands)
            } else {
                // Fallback on earlier versions
            }
        }
    }


