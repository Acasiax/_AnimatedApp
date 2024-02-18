//
//  DetailView.swift
//  YouTubeDetailView
//
//  Created by 이윤지 on 2023/07/04.
//

import SwiftUI

struct LookPageDetailView: View {
    @Environment(\.presentationMode) var presentationMode // 추가
    var movie : ChanelLookPage
   // var movie : BrandShowList
    @Binding var showDetailView: Bool
//    @Binding var detailMovie: BrandShowList?
    @Binding var detailMovie: ChanelLookPage?
    @Binding var currentCardSize: CGSize
  //  @Binding var detailLookpage: ChanelLookPage
   // @Binding var selectedYoutube: FashionShow!
    var animation: Namespace.ID
    @State var showDetailContent: Bool = false
    @State var offset: CGFloat = 0
    
    //    //애미메이션 뷰 프러퍼티들
    @State var currentIndex: Int = 0
    @State var currentTab: String = "Films"
    @Environment(\.colorScheme) var scheme
    
    
    //상세 제품들 비디오디테일 뷰 프러퍼티들
    var colums = Array(repeating: GridItem(.flexible(), spacing: 15), count: 2)
    var selectedLookPage : ChanelLookPage = CHANEL2223DakarShow[0]
   // var selectedLookPage66 : LookPage = lookpages[0]
    @State var selectedVideo : Video = Videos[0]
    @State var showVideo = false
    @Namespace var namespaceVideo
    
    @State var loadView = false
    
    var body: some View { //✅
       
      
           
        //   ZStack{
        NavigationView{
            
                ScrollView(.vertical, showsIndicators: false){
                    
                    VStack{
                       Image(movie.artworkImage)
                       
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: currentCardSize.width*1.5, height: currentCardSize.height*1.5)
                            .cornerRadius(15)
                            .matchedGeometryEffect(id: movie.id, in: animation)
                        
                        VStack(spacing: 15){
                            Text("실험\(movie.looktitle)")
                                .font(.largeTitle)
                                .fontWeight(.semibold)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.top,25)
                            
                            Text("\(movie.artworkText)")
                                .multilineTextAlignment(.leading)
                            
                          //  VideoDetailView(showDetailView: $showDetailView, detailMovie: $detailMovie, currentCardSize: $currentCardSize)
                            
                            //비디오디테일 뷰시작 🦾
                            
                            ZStack{
                                //그리드 뷰
                                ScrollView(.vertical, showsIndicators: false){
                                    HStack{

                                        Text("Travel")
                                            .font(.system(size: 35, weight: .bold))
                                            .foregroundColor(.black)

                                        Spacer()

                                        Button(action: {}){

                                            Image(systemName: "line.3.horizontal.decrease")
                                                .renderingMode(.original)
                                                .foregroundColor(.green)

                                        }
                                    }
                                    //위에 영역을 무시했기 때문에

                                    .padding([.horizontal,.top])
                                    
                                    //그리드 뷰
//                                    ForEach(CHANEL2223DakarShow.indices, id: \.self) { index in
//                                           let LookPage = CHANEL2223DakarShow[index]
                                    
                                    LazyVGrid(columns: colums, spacing: 25){
                                        //🔵소품들 제품 사진 6개 (2개 n열)
                                        ForEach(CHANEL2223DakarShow) {LookPage in
                                      //  ForEach(CHANEL2223DakarShow.indices, id: \.self){LookPage in
                                        //    let LookPage = CHANEL2223DakarShow[LookPage]
                                            
                                            VStack(alignment: .leading, spacing: 10){
                                              //  CHANEL2223DakarShow.indices,id: \.self
                                              
                                              //  Image(CHANEL2223DakarShow[LookPage].artworkDetailImage)
                                                Image(LookPage
                                                    // .orderOfImages[])
                                                       .artworkDetailImage)
                                                    .resizable()
                                                    .frame(height: 180)
                                                    .cornerRadius(15)
                                                
                                                //assigning ID
                                                    .onTapGesture {
                                                        withAnimation(.spring()){
                                                            showVideo.toggle()
                                                            //detailMovie = LookPage
                                                            detailMovie = LookPage
                                                            //   selectedLookPage66 = LookPage
                                                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                                                                loadView.toggle()
                                                            }
                                                        }
                                                    }
                                                //  .matchedGeometryEffect(id: LookPage.id, in: namespaceVideo)
                                                
                                                
                                                Text(LookPage.looktitle)
                                                    .fontWeight(.bold)
                                                    .foregroundColor(.black)
                                                
                                            }
                                            
                                        }
                                    }
                                    .padding(.horizontal)
                                }.padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
  
                            }
                            .background(Color.clear.edgesIgnoringSafeArea(.all))
                            
                            //비디오디테일 끝 🦾
                
                            Button{
                                
                            }label: {
                                Text("자세히 보기(사이트)")
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                    .padding(.vertical)
                                    .frame(maxWidth: .infinity)
                                    .background{
                                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                                            .fill(.blue)
                                    }
                                
                            }
                            .padding(.top,20)
                        }
                        .opacity(showDetailContent ? 1 : 0)
                        .offset(y: showDetailContent ? 0 : 200)
                        
                    } //v스택 스탑
                    .padding()
                    .modifier(OffsetModifier(offset: $offset))
                } //scrollview stop
                .coordinateSpace(name: "SCROLL")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background{
                    Rectangle()
                        .fill(.ultraThinMaterial)
                        .ignoresSafeArea()
                }
                .onAppear {
                    withAnimation(.easeInOut){
                        showDetailContent = true
                    }
                    
                }
                .onChange(of: offset){ newvalue in
                    //120 340
                    if newvalue > 1440{
                        withAnimation(.easeInOut){
                            showDetailContent = false
                        }
                        
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) {
                            withAnimation(.easeInOut){
                                showDetailView = false
                            }
                        }
                    }
                    
                }
                .navigationBarTitle("SLAY", displayMode: .inline)
                // 타이틀 추가
                .navigationBarColor(backgroundColor: .clear, titleColor: .purple)
                //
                //.foregroundColor(.white)
                .navigationBarBackButtonHidden(true) // 기본 뒤로 가기 버튼 숨기기
                .navigationBarItems(leading: backButton)
                .background(BGView())
            
            
            
        }// NavigationView stop
        
        //히어로/ 깊숙한 상세페이지 화면🦸‍♂️
            if showVideo {

                VStack{
                    ZStack(alignment: Alignment(horizontal: .center, vertical: .top)){
//상세 제품의 더 상세 이미지 마지맛 큰 사진
                         
                        //🖼️
                       
                        Image(detailMovie!.artworkDetailImage)
                            .resizable()
                            .frame(height: 300)
                            .cornerRadius(10)
                            .matchedGeometryEffect(id: selectedLookPage.id, in: namespaceVideo)
                        if loadView{

                            HStack{

                                Button {
                                    
                                   // loadView.toggle()
                                   // withAnimation(.easeIn){
                                    withAnimation(.spring()){
                                        loadView.toggle()
                                        showVideo.toggle()
                                        
                                    }
                                } label: {
                                    Image(systemName: "xmark")
                                        .foregroundColor(.white)
                                        .padding()
                                        .background(Color.black.opacity(0.5))
                                        .clipShape(Circle())
                                }

                                Spacer()

                                Button {

                                } label: {
                                    Image(systemName: "suit.heart.fill")
                                        .foregroundColor(.red)
                                        .padding()
                                        .background(Color.green)
                                        .clipShape(Circle())
                                }
                            }
                            // .padding(.top,35)
                            .padding(.horizontal)
                        }
                    }

                    //상세 페이지
                    ScrollView(.vertical, showsIndicators: false){
                        //애니메이션 로딩 후 로딩
                        if loadView {
                            VStack{
                                HStack{
                                    Text(selectedLookPage.looktitle)
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)
                                    

                                    Spacer()
                                }
                                .padding(.top)
                                .padding(.horizontal)

                                Text("zzzzzzzzzzzzzzz")
                                    .multilineTextAlignment(.leading)
                                    .padding(.top)
                                    .padding(.horizontal)

                                HStack{

                                    Text("종류/색상")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)

                                    Spacer()
                                }
                                .padding(.top)
                                .padding(.horizontal)

                                HStack(spacing: 0){

                                    ForEach(1...5, id: \.self){i in
                                        Image("bag\(i)")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 50, height: 50)
                                            .clipShape(Circle())
                                            .offset(x: -CGFloat(i * 20))


                                    }
                                    Spacer(minLength: 0)
                                    Button(action: {

                                    }) {

                                        Text("View all")
                                            .fontWeight(.bold)
                                    }

                                }
                                //
                                .padding(.leading,20)
                                .padding(.top)
                                .padding(.horizontal)

                                //carousel
                                HStack{

                                    Text("다른 사진")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)

                                    Spacer()
                                }
                                .padding(.top)
                                .padding(.horizontal)

                                TabView{

                                    ForEach(1...6, id: \.self){i in
                                        if "bag\(i)" != selectedLookPage.artworkDetailImage{

                                            Image("bag\(i)")
                                                .resizable()
                                                .cornerRadius(15)
                                                .padding(.horizontal)

                                        }

                                    }
                                }
                                .frame(height: 250)
                                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                                .padding(.top)

                                Button(action: {}) {

                                    Text("자세히 보기(사이트 방문)")
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .padding(.vertical)

                                        .frame(width: UIScreen.main.bounds.width - 150)
                                        .background(Color.blue)
                                        .cornerRadius(15)
                                }
                                .padding(.top,25)
                            }
                        }
                    }
                }
                .background(BGView())
                // .padding(.top,5)
                // .ignoresSafeArea(.all, edges: .top)
            }
            //🦸‍♂️stop
        
    }//✅
    
    
    
    private var backButton: some View {
        Button(action: {
            withAnimation(.spring()){
                showDetailContent = false
                showDetailView = false
            }
            // presentationMode.wrappedValue.dismiss() // 뒤로 가기 버튼 눌렀을 때 동작
        }) {
            Image(systemName: "chevron.left") // 뒤로 가기 아이콘
                .foregroundColor(.red)
        }
    }
    //MARK: Blurred BG
    @ViewBuilder
        func BGView()->some View{
            GeometryReader{proxy in
                let size = proxy.size
                
                TabView(selection: $currentIndex) {
                    ForEach(CHANEL2223DakarShow.indices,id: \.self){index in
                        Image(CHANEL2223DakarShow[index].artworkImage)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: size.width, height: size.height)
                            .clipped()
                            .tag(index)
                    }
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
                .animation(.easeInOut, value: currentIndex)
                
                let color: Color = (scheme == .dark ? .black : .white)
                
                //custom gradient
                LinearGradient(colors: [
                    .black,
                    .clear,
                    color.opacity(0.15),
                    color.opacity(0.5),
                    color.opacity(0.8),
                    color,
                    color
                ], startPoint: .top, endPoint: .bottom)
                
                //블러드 오버레이
                Rectangle()
                    .fill(.ultraThinMaterial)
            
            }
            .ignoresSafeArea()
        
    }
    
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
      //  LookpageHome(selectedBrand: .constant(nil), selectedYoutube: .constant(nil))
          //  .preferredColorScheme(.dark)
        // DetailView()
        
        YouTube(selectedBrand:  .constant(nil), selectedYoutube:  .constant(nil))
        
    }
}
