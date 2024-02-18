//
//  Brand.swift
//  univershow
//
//  Created by 이윤지 on 2023/05/28.
//
import SwiftUI

struct Brand : Identifiable {
    var id : Int
    //var id = UUID().uuidString
    var image : String
    var title : String
    var price : String
    var color : Color
    var detail : String
    var proPic : String
    var seen : Bool
    var loading : Bool
    var name : String
    var KoreaName : String
    var jobName : String
    var fashionShows: [FashionShow]
    var youtubeID: String
    var youtubeURL: String
    
   
   }


var brands : [Brand] = [

    Brand(id: 0, image: "planet1", title: "샤넬  ", price: "go", color: Color.purple, detail: "", proPic: "비르진이 비에르", seen: false, loading: false, name: "Virginie\nViard", KoreaName: "비르진이 비에르", jobName: "샤넬 크리에이터 디렉터 패션 디자이너",fashionShows: fashionShowListChannel, youtubeID: fashionShowListChannel[0].youtubeID, youtubeURL: fashionShowListChannel[0].youtubeURL),
    Brand(id: 1, image: "planet2", title: "구찌  ", price: "go", color: Color.blue, detail: "", proPic: "구찌-사바토 데 사르노", seen: false, loading: false, name: "Sabato De Sarno", KoreaName: "사바토 데 사르노", jobName: "구찌 크리에이티브 디렉터",fashionShows: fashionShowListGucci, youtubeID: fashionShowListGucci[0].youtubeID, youtubeURL: fashionShowListGucci[0].youtubeURL),
    Brand(id: 2, image: "planet3", title: "버버리", price: "go", color: Color.orange, detail: "", proPic: "버버리-다니엘리", seen: false, loading: false, name: "Daniel Lee", KoreaName: "다니엘 리", jobName: "버버리 디자이너",fashionShows: fashionShowListBURBERRY, youtubeID: fashionShowListBURBERRY[0].youtubeID, youtubeURL: fashionShowListBURBERRY[0].youtubeURL),
    Brand(id: 3,image: "planet4", title: "디올", price: "go", color: Color.pink, detail: "", proPic: "디올-마리아 그라치아 치우리", seen: false, loading: false, name: "Maria Grazia\nChiuri", KoreaName: "그라치아 치우리", jobName: "디올 디자이너",fashionShows: fashionShowListDior, youtubeID: fashionShowListDior[0].youtubeID, youtubeURL: fashionShowListDior[0].youtubeURL),
    Brand(id: 4,image: "planet5", title: "프라다", price: "go", color: Color.black, detail: "", proPic: "프라다-라프시몬스", seen: false, loading: false, name: "Raf Simons", KoreaName: "라프 시몬스", jobName: "프라다 디자이너",fashionShows: fashionShowListPRADA, youtubeID: fashionShowListPRADA[0].youtubeID, youtubeURL: fashionShowListPRADA[0].youtubeURL),
    Brand(id: 5,image: "planet6", title: "루이비통", price: "go", color: Color.green.opacity(0.3), detail: "", proPic: "루이비통-퍼렐 윌리엄스.", seen: false, loading: false, name: "Pharrell Williams", KoreaName: "퍼렐 윌리엄스", jobName: "루이비통 크리에이티브 디렉터",fashionShows: fashionShowListLOUISVUITTON, youtubeID: fashionShowListLOUISVUITTON[0].youtubeID, youtubeURL: fashionShowListLOUISVUITTON[0].youtubeURL),
    Brand(id: 6,image: "planet7", title: "입생로랑", price: "go", color: Color.red.opacity(0.5), detail: "", proPic: "입생로랑-안토니 바카렐로", seen: false, loading: false, name: "Anthony Vaccarello", KoreaName: "안토니 바카렐로", jobName: "입생로랑 디자이너",fashionShows: fashionShowListYSL, youtubeID: fashionShowListYSL[0].youtubeID, youtubeURL: fashionShowListYSL[0].youtubeURL)
    
]



   

struct FashionShow : Identifiable {
    var id : Int
    var showTitle : String
    var showLocation : String
    var showDetail : String
    var loadingCount : String
    var youtubeID: String
    var youtubeURL: String
    //var ChanelLookPagess : String
    var mainImages2N: [ChanelLookPage]
    
    
}
//, mainImages2N: CHANEL2324FWReadyToWearShow[0].artworkDetailImage
var fashionShowListChannel : [FashionShow] = [
  
    FashionShow(id: 0, showTitle: "CHANEL 2023/24 크루즈 쇼 — CHANEL 쇼​", showLocation: "미국 로스앤젤레스에서 개최된 패션쇼", showDetail: "2023/24 크루즈 컬렉션은 보드 스포츠, 에어로빅, 롤러 스케이트 등 로스앤젤레스의 적극적인 추구와 매력적인 영화 인물의 환상을 통합합니다. 캘리포니아 생활 방식을 연상시키는 모조 다이아몬드로 감싼 미니 쇼츠와 점프수트, 자수 뷔스티에와 작은 탱크 탑은 Virginie Viard가 상상한 컬렉션에 색상과 활력을 불어넣습니다.", loadingCount: "553,806회 조회수 돌파", youtubeID: "Wr4w5i1xFEo", youtubeURL: "https://www.youtube.com/live/Wr4w5i1xFEo?feature=share",mainImages2N: CHANEL2324FWReadyToWearShow),
    FashionShow(id: 1, showTitle: "CHANEL 2023/24 가을-겨울 레디-투-웨어 쇼 — CHANEL 쇼", showLocation: "파리 그랑 팔레 에페메르(Grand Palais Éphémère)에서 개최된 패션쇼", showDetail: "넓은 범위로 퍼져 있는 하얀 카멜리아를 중심으로 한 영화적인 이미지가 펼쳐진다. 여배우이자 CHANEL의 앰배서더인 나나 고마쓰가 이네즈 & 비누트의 작품에 출연하며, CHANEL 2023/24 가을/겨울 레디 투 웨어 쇼가 파리의 그랑 팔레 에페메르에서 열렸다. 버지니 비아르가 상상한 이번 컬렉션은 움직이는 비대칭 실루엣으로 가득하며, 카멜리아 무늬로 표현된 여성적-남성적인 정신을 담고 있다. 이는 CHANEL의 영원한 상징이기도 하다.", loadingCount: "1,553,439회 조회수 돌파", youtubeID: "JiZ_Y2huMYE", youtubeURL: "https://www.youtube.com/live/JiZ_Y2huMYE?feature=share", mainImages2N: CHANEL2324FWReadyToWearShow),
    FashionShow(id: 2, showTitle: "샤넬 2023 봄-여름 오뜨 꾸뛰르 쇼 — 샤넬 쇼​", showLocation: "파리 그랑 팔레 에페메르(Grand Palais Éphémère)에서 개최된 패션쇼",showDetail: "프랑스 파리의 깡봉가 31번지에 위치한 가브리엘 샤넬의 아파트. 그곳의 신화적인 동물 조각상에서 영감을 얻은 버지니 비아르가 샤넬 2023 봄-여름 오뜨 꾸뛰르 컬렉션을 지휘했습니다. 이번 컬렉션을 장식하는 것은 탁월하게 가벼운 무게의 자수입니다. 쇼의 모델들은 아티스트 자비에 베이앙(Xavier Veilhan)이 제작한 나무 조각품 내부에서 모습을 드러냈습니다.", loadingCount: "1,126,398회 조회수 돌파", youtubeID: "VeYZx6O6c2Q", youtubeURL: "https://www.youtube.com/live/VeYZx6O6c2Q?feature=share", mainImages2N: CHANEL2023ssCHANELHauteCouture),
    FashionShow(id: 3, showTitle: "샤넬 2022/23 공방 컬렉션 – 다카르 — 샤넬 쇼", showLocation: "아프리카 세네갈의 수도 다카르에서 개최된 패션쇼",showDetail: "2022/23 공방(métiers d’art) 컬렉션은 여러 공방에 상주하는 장인들의 기술력을 더 높은 경지로 끌어올렸습니다.샤넬 공방은 수백 명의 자수 장인, 깃털 장인, 액세서리 장인, 금세공 장인, 플리츠 장인, 슈즈 장인, 모자 장인, 장갑 장인, 무두질 장인, 가죽 장인이 한자리에 모인 곳입니다. 장인들의 끊임없는 재해석을 통해 오늘날까지 계승되어온 다양한 노하우는 버지니 비아르와 교류하며 제작한 컬렉션 작품 하나하나에 탁월한 가치를 불어 넣습니다.", loadingCount: "804,177회 조회수 돌파", youtubeID: "GJArK4-8MN0", youtubeURL: "https://www.youtube.com/live/GJArK4-8MN0?feature=share", mainImages2N: CHANEL2223DakarShow),
   
    
    FashionShow(id: 4, showTitle: "샤넬 2023 봄-여름 레디-투-웨어 — 샤넬 쇼", showLocation: "알랭 레네(Alain Resnais)감독의 영화 'Last Year in Marienbad'(1961)의 매력을 담은 패션쇼 ",showDetail: "알랭 레네의 '마리엔바드에서 지난 해' (1961)의 장면들로 풍부한 영화적 배경 안에서 CHANEL 2023 봄/여름 레디 투 웨어 컬렉션은 매력의 본질을 일깨워준다. 크리스틴 스튜어트가 표현하는 움직임과 표현의 자유를 탐구하는 버지니 비아르는 화려함의 콜라주를 상상하며 현대성과 가벼움으로 휘몰아치는 분위기를 조성한다.", loadingCount: "804,317회 조회수 돌파", youtubeID: "li6JvF_xvTA", youtubeURL: "https://www.youtube.com/live/li6JvF_xvTA?feature=share", mainImages2N: []),
    FashionShow(id: 5, showTitle: "샤넬 2022/23 가을-겨울 오뜨 꾸뛰르 쇼, 쇼 영상 — 샤넬 쇼​", showLocation: "에트리에 드 파리(Étrier de Paris) 승마 센터에서 개최된 패션쇼",showDetail: "", loadingCount: "5453,345,345 조회수 돌파", youtubeID: "DKl1ml0KZ04", youtubeURL: "https://www.youtube.com/live/DKl1ml0KZ04?feature=share", mainImages2N: []),
    FashionShow(id: 6, showTitle: "The Film of the CHANEL Cruise 2022/23 Show — CHANEL Shows", showLocation: "몬테카를로 해변에서 개최된 패션쇼",showDetail: "", loadingCount: " 745,501회 조회수 돌파", youtubeID: "Hxev4f3ZZq0", youtubeURL: "https://www.youtube.com/live/Hxev4f3ZZq0?feature=share", mainImages2N: []),
    FashionShow(id: 7, showTitle: "영원의 트위드, 샤넬 2022/23 가을-겨울 레디-투-웨어 쇼 영상 — 샤넬 쇼", showLocation: "파리 그랑 팔레 에페메르에서 개최된 패션쇼",showDetail: "", loadingCount: " 901,406회 조회수 돌파", youtubeID: "koDtp6_tpJ0", youtubeURL: "https://www.youtube.com/live/koDtp6_tpJ0?feature=share", mainImages2N: []),
    FashionShow(id: 8, showTitle: "샤넬 2022 봄-여름 오뜨 꾸뛰르 쇼 영상 — 샤넬 쇼", showLocation: "Xavier Veilhan이 디자인한 Grand Palais Éphémère에서 개최한 패션쇼",showDetail: "", loadingCount: " 971,870회 조회수 돌파", youtubeID: "ykYI5iMUwdk", youtubeURL: "https://www.youtube.com/live/ykYI5iMUwdk?feature=share", mainImages2N: []),
    FashionShow(id: 9, showTitle: "샤넬 2021/22 공방 컬렉션 쇼 — 샤넬 쇼​", showLocation: "샤넬이 만든 파리의 새로운 건물인 𝘭Ф19M에서 개최된 패션쇼",showDetail: "", loadingCount: "1,106,788회 조회수 돌파", youtubeID: "ASw7rKUKZYQ", youtubeURL: "https://www.youtube.com/live/ASw7rKUKZYQ?feature=share", mainImages2N: []),
    FashionShow(id: 10, showTitle: "CHANEL 2022 봄-여름 레디-투-웨어 쇼 — CHANEL 쇼", showLocation: "1980년대 패션쇼의 고조된 감정과 마법을 불러일으키기 위해 포토그래퍼들로 둘러싸인 높은 런웨이",showDetail: "", loadingCount: "2,369,876회 조회수 돌파", youtubeID: "4uFv6pJbqZ4", youtubeURL: "https://www.youtube.com/live/4uFv6pJbqZ4?feature=share", mainImages2N: []),
    FashionShow(id: 11, showTitle: "샤넬 2021/22 가을-겨울 오뜨 꾸뛰르 쇼", showLocation: "프랑스 파리의 팔레 갈리에라 패션 박물관에서 개최된 패션쇼",showDetail: "", loadingCount: " 1,010,202회 조회수 돌파", youtubeID: "2SoV6BMLCf0", youtubeURL: "https://www.youtube.com/live/2SoV6BMLCf0?feature=share", mainImages2N: []),
    FashionShow(id: 12, showTitle: "샤넬 2021/22 크루즈 쇼 — 샤넬 쇼", showLocation: "프랑스 남부의 카리에르 드 뤼미에르(Carrières de Lumières)의 하얀 석회암 지역에서 개최한 패션쇼",showDetail: "", loadingCount: "1,025,012회 조회수 돌파", youtubeID: "ybcwFo3vO4s", youtubeURL: "https://www.youtube.com/live/ybcwFo3vO4s?feature=share", mainImages2N: []),
    FashionShow(id: 13, showTitle: "2021 봄-여름 레디-투-웨어 쇼 — CHANEL", showLocation: "프랑스 파리 그랑팔레에서 개최한 패션쇼",showDetail: "", loadingCount: "1,025,012회 조회수 돌파", youtubeID: "SVmqagGDv28", youtubeURL: "https://www.youtube.com/live/SVmqagGDv28?feature=share", mainImages2N: []),
    FashionShow(id: 14, showTitle: "2020/21 가을-겨울 레디-투-웨어 컬렉션 — CHANEL", showLocation: "프랑스 파리에서 개최한 패션쇼",showDetail: "", loadingCount: "1,649,711회회 조회수 돌파", youtubeID: "impxVV_tQKg", youtubeURL: "https://www.youtube.com/live/impxVV_tQKg?feature=share", mainImages2N: [])

]


var fashionShowListGucci : [FashionShow] = [
  
    FashionShow(id: 0, showTitle: "구찌 크루즈 2024 패션쇼", showLocation: "대한민국 서울 경북궁에서 개죄된 패션쇼",showDetail: "이거는 경북궁에서 열린 구찌 크루즈 쇼이고 0번째야", loadingCount: "3,273,917회 조회수 돌파", youtubeID: "rIUdA21wEPc", youtubeURL: "https://www.youtube.com/live/rIUdA21wEPc?feature=share", mainImages2N: []),
    FashionShow(id: 1, showTitle: "구찌 2023 가을 겨울 여성 패션쇼", showLocation: "이탈리아 밀란 패션위크에서 개최한 패션쇼",showDetail: "이거는 이탈리아 밀란에 열린 구찌 가을 겨울 2023 여성 패션쇼이고 1번쨰야", loadingCount: " 2,362,555회 조회수 돌파", youtubeID: "lkvsiTD3bF4", youtubeURL: "https://www.youtube.com/live/lkvsiTD3bF4?feature=share", mainImages2N: []),
    FashionShow(id: 2, showTitle: "구찌 남성 가을 겨울 2023 패션쇼", showLocation: "이탈리아 밀란 패션위크에서 개최한 패션쇼",showDetail: "", loadingCount: "2,786,925회 조회수 돌파", youtubeID: "Q8s6OZCpgto", youtubeURL: "https://www.youtube.com/live/Q8s6OZCpgto?feature=share", mainImages2N: []),
    FashionShow(id: 3, showTitle: "구찌 트윈스버그 패션쇼", showLocation: "비대칭적 상호성에 매료된 알레산드로 미켈레(Alessandro Michele)는 서로를 반영한 ​​두 개의 런웨이에서 하우스를 위한 최신 컬렉션을 공개했습니다.",showDetail: "", loadingCount: "5,094,144회  조회수 돌파", youtubeID: "XhROrqqJpuI", youtubeURL: "https://www.youtube.com/live/XhROrqqJpuI?feature=share", mainImages2N: []),
    FashionShow(id: 4, showTitle: "구찌 코스모고니 패션쇼", showLocation: "해질 무렵, 이탈리아 안드리아의 유서 깊은 카스텔 델 몬테(Castel del Monte)를 배경으로 알레산드로 미켈레(Alessandro Michele)가 하우스를 위한 최신 컬렉션을 선보였습니다.",showDetail: "", loadingCount: "4,389,620회 조회수 돌파", youtubeID: "BUej93sSeng", youtubeURL: "https://www.youtube.com/live/BUej93sSeng?feature=share", mainImages2N: []),
    FashionShow(id: 5, showTitle: "절묘한 구찌", showLocation: "밀라노 구찌 허브의 환상적인 거울 홀에서 크리에이티브 디렉터 알레산드로 미켈레(Alessandro Michele)가 그의 최신 컬렉션인 절묘한 구찌(Exquisite Gucci)를 선보였습니다.",showDetail: "", loadingCount: "7,829,915회 조회수 돌파", youtubeID: "SBACvcRB3es", youtubeURL: "https://www.youtube.com/live/SBACvcRB3es?feature=share", mainImages2N: []),
    FashionShow(id: 6, showTitle: "구찌 러브 퍼레이드", showLocation: "",showDetail: "", loadingCount: "5,879,385회 조회수 돌파", youtubeID: "urgwQHUUaTE", youtubeURL: "https://www.youtube.com/live/urgwQHUUaTE?feature=share", mainImages2N: []),
    FashionShow(id: 7, showTitle: "구찌 에필로그", showLocation: "2020년 7월 17일, 크리에이티브 디렉터 알레산드로 미켈레(Alessandro Michele)가 에필로그 컬렉, mainImages2N: []션",showDetail: "", loadingCount: "4,071,131회 조회수 돌파", youtubeID: "9jIrysawtO4", youtubeURL: "https://www.youtube.com/live/9jIrysawtO4?feature=share", mainImages2N: []),
    FashionShow(id: 8, showTitle: "구찌 2020 가을 겨울 여성 패션쇼", showLocation: "2020. 2. 19 밀라노 구찌 허브에서 개최된 패션쇼",showDetail: "", loadingCount: "5,192,676회 조회수 돌파", youtubeID: "fDCcii9l_MQ", youtubeURL: "https://www.youtube.com/live/fDCcii9l_MQ?feature=share", mainImages2N: []),
    FashionShow(id: 9, showTitle: "구찌 2020 봄/여름 컬렉션", showLocation: "구찌 허브(Gucci Hub)에서 선보인 알레산드로 미켈레(Alessandro Michele)의 ",showDetail: "", loadingCount: "9,998,025회 조회수 돌파", youtubeID: "AXOfw9x-hVw", youtubeURL: "https://www.youtube.com/live/AXOfw9x-hVw?feature=share", mainImages2N: []),
    FashionShow(id: 10, showTitle: "구찌 크루즈 2020 패션쇼", showLocation: " 2019. 5. 29. 그리스 로마 카피톨리노 박물관의 활주로에",showDetail: "", loadingCount: "748,128회 조화수 돌파", youtubeID: "9duN7juQvsg", youtubeURL: "https://www.youtube.com/live/9duN7juQvsg?feature=share", mainImages2N: []),
    FashionShow(id: 11, showTitle: "구찌 2019 가을 겨울 패션쇼", showLocation: "2019. 2. 20. 밀라노 구찌 허브의 런웨이에서 구찌 2019 가을 겨울 컬렉션",showDetail: "", loadingCount: "874,031회 조회수 돌파", youtubeID: "IoHY-f_bh44", youtubeURL: "https://www.youtube.com/live/IoHY-f_bh44?feature=share", mainImages2N: []),
    FashionShow(id: 12, showTitle: "구찌 2019 봄 여름 패션쇼", showLocation: "2018. 9. 25.파리 테아트르 르 팔라스에서 열린 구찌 2019 봄/여름 패션쇼(알레산드로 미켈레)",showDetail: "", loadingCount: "331,861회 조회수 돌파", youtubeID: "K3_kN6VjAXg", youtubeURL: "https://www.youtube.com/live/K3_kN6VjAXg?feature=share", mainImages2N: [])

]


var fashionShowListBURBERRY : [FashionShow] = [
  
    FashionShow(id: 0, showTitle: "버버리 2023 가을 겨울 패션쇼", showLocation: "", showDetail: "", loadingCount: "5,803,845회 조회수 돌파", youtubeID: "XXqlTYDIEWo", youtubeURL: "https://www.youtube.com/live/XXqlTYDIEWo?feature=share", mainImages2N: []),
    FashionShow(id: 1, showTitle: "그만큼#버버리SS23런웨이 쇼", showLocation: "2022. 9. 26.", showDetail: "리카르도 티시의 버버리 2023 봄/여름 런웨이 쇼를 감상하세요. '여름의 영국에서 해변은 민주주의와 공동체의 장소입니다. 모든 문화권의 사람들이 단순한 즐거움을 함께 누릴 수 있는 곳입니다. 나는 그 이데올로기, 그 감정을 전체 컬렉션으로 번역하고 싶었습니다. 그 공존과 기쁨의 정신, 그 현실을 표현하고 싶었습니다. 컬렉션은 인류가 만나는 곳, 서로 다른 세계가 충돌하는 지점인 해변에서 영감을 받았습니다. 옷을 입을 때와 옷을 벗을 때, 드러나는 것과 보호할 때, 속옷과 아우터웨어 사이의 긴장은 모두 버버리의 현대적 DNA의 일부이자 현재와 관련이 있다고 느낍니다. 이번 시즌, 우리는 신체의 의식이라는 새로운 관능미를 탐구했습니다. 젊음의 해방과 개방, 자신의 몸을 끌어안고 드러내는 사람들의 모습에서 영감을 받았습니다. 그들이 누구인지, 그들의 정체성. 그들의 자유. 이건 모던한 느낌, 이건 맞는 느낌, 이건 버버리 느낌이야.' – Riccardo Tisci, 최고 크리에이티브 책임자 Burberry.com에서 전체 쇼 보기", loadingCount: "1,454,183회 조회수 돌파", youtubeID: "uMnCZX4-nNc", youtubeURL: "https://www.youtube.com/live/uMnCZX4-nNc?feature=share", mainImages2N: []),
    FashionShow(id: 2, showTitle: "버버리 2022 가을/겨울 런웨이 쇼", showLocation: "2022. 3. 11.", showDetail: "Riccardo Tisci의 Burberry 2022 가을/겨울 런웨이 쇼를 감상하세요. '소속한다는 것이 무엇을 의미하는지 탐구하는 것이 중요했습니다. 커뮤니티가 진정으로 세상에 의미를 가져다주는 것입니다. 저는 이 컬렉션이 함께 모이는 것과 오늘 우리가 함께 모이는 도시를 기념하기를 원했습니다. 나에게 런던은 경계를 넘어 움직이는 꿈의 장소입니다. 이번 컬렉션은 감사와 희망, 사랑으로 미래에 집중하면서 과거의 아름다움을 기리며 영국적이라는 무형의 본질을 구현합니다.' – 리카르도 티시 Burberry.com에서 전체 쇼를 만나보세요", loadingCount: "4,241,438회 조회수 돌파", youtubeID: "8MiV3jicm2k", youtubeURL: "https://www.youtube.com/live/8MiV3jicm2k?feature=share", mainImages2N: []),
    FashionShow(id: 3, showTitle: "Burberry 2021 가을/겨울 남성복 프레젠테이션", showLocation: "2021. 2. 22.", showDetail: "Riccardo Tisci의 Burberry 2021 가을/겨울 남성복 프레젠테이션을 시청하세요. 2021년 2월 22일 오후 1시 GMT", loadingCount: "404만회 조회수 돌파", youtubeID: "YGgmW1edKZ8", youtubeURL: "https://www.youtube.com/live/YGgmW1edKZ8?feature=share", mainImages2N: []),
    FashionShow(id: 4, showTitle: "버버리 2020 가을/겨울 런웨이 쇼", showLocation: "2020. 2. 18.", showDetail: "#LFW #RiccardoTisci#RiccardoTisci 의 #BurberryAutumnWinter20 최신 런웨이 쇼를 지금 #LFW 에서 라이브로 시청하세요 ", loadingCount: "857,954회 조회수 돌파", youtubeID: "iR34HpzUiMI", youtubeURL: "https://www.youtube.com/live/iR34HpzUiMI?feature=share", mainImages2N: []),
    FashionShow(id: 5, showTitle: "버버리 2020 봄/여름 런웨이 쇼", showLocation: "2019. 9. 17.", showDetail: "지금 바로 런던 패션 위크의 2020 봄/여름 런웨이 쇼를 라이브로 시청하세요.", loadingCount: "290,524회 조회수 돌파", youtubeID: "jvR4lRIBZtA", youtubeURL: "https://www.youtube.com/live/jvR4lRIBZtA?feature=share", mainImages2N: []),
   
]


var fashionShowListDior : [FashionShow] = [
  
    FashionShow(id: 0, showTitle: "디올 오뜨 꾸뛰르 쇼", showLocation: "파리 로댕 미술관", showDetail: "파리 로댕 미술관에서 마리아 그라치아 치우리(Maria Grazia Chiuri)가 선보이는 2023-2024 가을-겨울 디올 오뜨 꾸뛰르 쇼의 화려한 공개를 기대해 주세요.", loadingCount: "42,916회 조회수 돌파", youtubeID: "ZnS1UMJayoI", youtubeURL: "https://www.youtube.com/live/ZnS1UMJayoI?feature=share", mainImages2N: []),
    FashionShow(id: 1, showTitle: "Dior 2024 남성 여름 쇼", showLocation: "2023. 6. 23 프랑스 파리에서 개최된 패션쇼", showDetail: "킴 존스(Kim Jones)가 파리에서 공개하는 Dior 2024 여름 남성 컬렉션을 기대해 주세요.", loadingCount: "1,895,815회 조회수 돌파", youtubeID: "ZJ7PaOLl49w", youtubeURL: "https://www.youtube.com/live/ZJ7PaOLl49w?feature=share", mainImages2N: []),
    FashionShow(id: 2, showTitle: "Dior 크루즈 2024 쇼", showLocation: "멕시코의 Colegio de San Ildefonso", showDetail: "멕시코의 Colegio de San Ildefonso에서 마리아 그라치아 치우리(Maria Grazia Chiuri)가 진행하는 Dior Cruise 2024 쇼의 화려한 공개를 기대해 주십시오.", loadingCount: "2,542,715회 조회수 돌파", youtubeID: "um6Fp8-Xneg", youtubeURL: "https://www.youtube.com/live/um6Fp8-Xneg?feature=share", mainImages2N: []),
    FashionShow(id: 3, showTitle: "Dior 2023 가을 패션쇼", showLocation: "뭄바이의 장엄한 게이트웨이 오브 인디아(Gateway of India)", showDetail: "뭄바이의 장엄한 게이트웨이 오브 인디아(Gateway of India)에서 해가 진 후 공개된 마리아 그라치아 치우리(Maria Grazia Chiuri)의 Dior 2023 가을 컬렉션은 아대륙의 공예와 색상에 대한 열정적이고 개인적이며 깊이 존경하는 찬사입니다. 부드럽고 레이어드된 실루엣, 아카이브 모티프, 사리에서 영감을 받은 드레이핑, Chanakya 아틀리에의 탁월한 수작업을 특징으로 하는 이 조명은 인도 문화와 텍스타일 기량의 조명이 탁월한 노하우에 대한 House의 끊임없는 헌신과 완벽하게 조화를 이룹니다.", loadingCount: "3,257,659회 조회수 돌파", youtubeID: "BfxdKZvpG6s", youtubeURL: "https://www.youtube.com/live/BfxdKZvpG6s?feature=share", mainImages2N: []),
    FashionShow(id: 4, showTitle: "Dior 2023-2024 가을-겨울 쇼", showLocation: "프랑스 파리", showDetail: "마리아 그라치아 치우리(Maria Grazia Chiuri)의 2023-2024 가을-겨울 Dior 2023-2024 가을-겨울 공개를 파리에서 라이브로, Joana Vasconcelos의 세트 아트워크를 감상하세요. ", loadingCount: "4,144,969회 조회수 돌파", youtubeID: "osiAIq3FqX4", youtubeURL: "https://www.youtube.com/live/osiAIq3FqX4?feature=share", mainImages2N: []),
    FashionShow(id: 5, showTitle: "Dior 2023 봄-여름 오뜨 꾸뛰르 쇼", showLocation: "프랑스 파리", showDetail: "마리아 그라치아 치우리(Maria Grazia Chiuri)가 파리에서 라이브로 선보이는 Dior 2023 봄-여름 오뜨 꾸뛰르 컬렉션 공개를 기대해 주세요.", loadingCount: "2,536,398회 조회수 돌파", youtubeID: "91a8TLl2hN4", youtubeURL: "https://www.youtube.com/live/91a8TLl2hN4?feature=share", mainImages2N: []),
    FashionShow(id: 6, showTitle: "Dior 남성 겨울 2023-2024 쇼", showLocation: "프랑스 파리", showDetail: "Kim Jones의 Dior Men Winter 2023-2024 컬렉션을 파리에서 라이브로 만나보세요.", loadingCount: "2,429,401회 조회수 돌파", youtubeID: "6_gmukGV2fc", youtubeURL: "https://www.youtube.com/live/6_gmukGV2fc?feature=share", mainImages2N: []),
    FashionShow(id: 7, showTitle: "Dior 남성 가을 2023 쇼", showLocation: "이집트", showDetail: "이집트의 기념비적인 기자 피라미드 단지에서 Kim Jones의 Dior Men Fall 2023 컬렉션 공개를 감상하세요.", loadingCount: "1,370,944회 조회수 돌파", youtubeID: "9ilb5AhvVwU", youtubeURL: "https://www.youtube.com/live/9ilb5AhvVwU?feature=share", mainImages2N: []),
    FashionShow(id: 8, showTitle: "Dior 2023 봄-여름 쇼", showLocation: "프랑스 파리", showDetail: "마리아 그라치아 치우리(Maria Grazia Chiuri)의 디올 봄-여름 2023 쇼를 파리에서 라이브로 공개했습니다.", loadingCount: "4,002,888회 조회수 돌파", youtubeID: "DsZhTIwJV5E", youtubeURL: "https://www.youtube.com/live/DsZhTIwJV5E?feature=share", mainImages2N: []),
    FashionShow(id: 9, showTitle: "디올 오뜨 꾸뛰르 쇼", showLocation: "2022. 7. 4.", showDetail: "마리아 그라치아 치우리(Maria Grazia Chiuri)의 디올 오뜨 꾸뛰르 2022-2023 가을-겨울 패션쇼를 만나보세요. ", loadingCount: "2,198,283회 조회수 돌파", youtubeID: "McNYjHMH17E", youtubeURL: "https://www.youtube.com/live/McNYjHMH17E?feature=share", mainImages2N: []),
    FashionShow(id: 10, showTitle: "Dior 남성 여름 2023 쇼", showLocation: "2022. 6. 24.", showDetail: "Monsieur Dior의 Granville 빌라와 Charleston Farmhouse의 목가적인 재건을 배경으로 한 Kim Jones의 Dior 남성 여름 2023 쇼의 라이브 공개를 시청하십시오.", loadingCount: "1,643,345회 조회수 돌파", youtubeID: "gDjPqCtxdxo", youtubeURL: "https://www.youtube.com/live/gDjPqCtxdxo?feature=share", mainImages2N: []),
    FashionShow(id: 11, showTitle: "DIOR 2025 s/p show", showLocation: "스페인", showDetail: "마리아 그라치아 치우리(Maria Grazia Chiuri)가 세비야(Seville)의 장엄한 스페인 광장(Plaza de España)에서 공개한 디올 2023 크루즈 쇼를 감상하세요.", loadingCount: "5,247,003회 조회수 돌파", youtubeID: "1XZtyrgUQhg", youtubeURL: "https://www.youtube.com/live/1XZtyrgUQhg?feature=share", mainImages2N: []),

]

var fashionShowListPRADA : [FashionShow] = [
  
    FashionShow(id: 0, showTitle: "미우치아 프라다와 라프 시몬스가 프라다 SS24 남성복 컬렉션을 선보입니다.", showLocation: "2023. 6. 18.", showDetail: "인체 주변의 유체 구조에 대한 조사. 미우치아 프라다(Miuccia Prada)와 라프 시몬스(Raf Simons)의 2024년 봄/여름 프라다 남성복 컬렉션은 옷을 입는 옷의 토대를 통해 표현되는 신체의 절대적인 자유를 제안합니다.", loadingCount: "6,437,684회 조회수 돌파", youtubeID: "BGWhB8dOKhc", youtubeURL: "https://www.youtube.com/live/BGWhB8dOKhc?feature=share", mainImages2N: []),
    FashionShow(id: 1, showTitle: "Miuccia Prada와 Raf Simons가 Prada FW23 여성복 컬렉션을 선보입니다.", showLocation: "2023. 2. 23.", showDetail: "미우치아 프라다(Miuccia Prada)와 라프 시몬스(Raf Simons)의 프라다 2023 가을 겨울 컬렉션은 아름다움에 대한 아이디어를 재개념화하고 재고하며 궁극적으로 재발견합니다. 여기서 아름다움은 미학이 아니라 행동에 의해 결정됩니다. 의복은 보살핌, 사랑, 현실의 아름다움을 나타내는 표시입니다.", loadingCount: "4,265,309회 조회수 돌파", youtubeID: "7xj27njaRBs", youtubeURL: "https://www.youtube.com/live/7xj27njaRBs?feature=share", mainImages2N: []),
    FashionShow(id: 2, showTitle: "Miuccia Prada와 Raf Simons가 Prada FW23 남성복 컬렉션을 선보입니다.", showLocation: "2023. 1. 15.", showDetail: "옷의 우선권 주장. 미우치아 프라다(Miuccia Prada)와 라프 시몬스(Raf Simons)의 2023 가을/겨울 프라다 남성복 컬렉션은 패션의 기본에 대한 탐구입니다. 오늘날에도 계속되는 의미, 가치 및 중요성을 옹호합니다.", loadingCount: "3,373,218회 조회수 돌파", youtubeID: "dS7QTSSvg4g", youtubeURL: "https://www.youtube.com/live/dS7QTSSvg4g?feature=share", mainImages2N: []),
    FashionShow(id: 3, showTitle: "Miuccia Prada와 Raf Simons가 Prada SS23 여성복 컬렉션을 선보입니다.", showLocation: "2022. 9. 22.", showDetail: "#MiucciaPrada 와 #RafSimons 의 Prada 2023년 봄/여름 여성 컬렉션은 반사, 굴절, 관찰이라는 일련의 현실을 보여줍니다. 현실의 행위. 이번 여성 런웨이 쇼를 위해 #Prada는 영화 감독 #NicolasWindingRefn 의 관점을 초대하여 컬렉션에 대한 경험을 구상합니다. 몰입형 설치와 AMO와의 협업으로 런웨이 쇼의 물리적 환경을 수반하여 두 개의 창의적 영역, 확장 사이의 관찰과 교차를 위한 기회입니다.", loadingCount: "3,068,314회 조회수 돌파", youtubeID: "pE7iaQkTgUM", youtubeURL: "https://www.youtube.com/live/pE7iaQkTgUM?feature=share", mainImages2N: []),
    FashionShow(id: 4, showTitle: "미우치아 프라다와 라프 시몬스가 프라다 SS23 남성복 컬렉션을 선보입니다.", showLocation: "2022. 6. 19.", showDetail: "#MiucciaPrada 와 #RafSimons 의 2023년 봄/여름 남성복 컬렉션은 선별된 프로세스를 표현합니다. 패션은 맥락, 요소와 의복의 병치, 인상 형성, 스타일 생성을 통해 환기됩니다. 방식으로서의 패션, 방식이자 표현 수단. 선택의 표현.", loadingCount: "2,805,430회 조회수 돌파", youtubeID: "K8O9tQtNuss", youtubeURL: "https://www.youtube.com/live/K8O9tQtNuss?feature=share", mainImages2N: []),
    FashionShow(id: 5, showTitle: "Miuccia Prada와 Raf Simons가 Prada FW22 여성복 컬렉션을 선보입니다.", showLocation: "2022. 2. 24.", showDetail: "#PradaFW22 는 삶과 삶의 기념 - 매 순간을 중요시하는 일상의 기회입니다. #프라다 의 이념은 아름다움의 어원, 여성의 역사가 됩니다. ", loadingCount: "3,954,555회 조회수 돌파", youtubeID: "ksvXnpnmYOc", youtubeURL: "https://www.youtube.com/live/ksvXnpnmYOc?feature=share", mainImages2N: []),
    FashionShow(id: 6, showTitle: "Miuccia Prada와 Raf Simons가 Prada FW22 남성복 컬렉션을 선보입니다.", showLocation: "2022. 1. 16.", showDetail: "#PradaFW22 Show 에서 배우들은 자신의 연기를 통해 진실을 반영하기 위해 고용된 현실의 해석자입니다. 여기에서 일상의 현실이 가치화되고 그 기호와 기표가 우아함과 세련됨의 기호와 기표와 교환됩니다. 제조 및 방법론을 통해 각 의류 장르에 동일한 중력이 부여됩니다. 현실의 모든 측면에는 의미, 세련미 및 존중, 지속적인 가치가 제공됩니다. ", loadingCount: "3,983,500회 조회수 돌파", youtubeID: "iJDRZE9uxeo", youtubeURL: "https://www.youtube.com/live/iJDRZE9uxeo?feature=share", mainImages2N: []),
    FashionShow(id: 7, showTitle: "Miuccia Prada와 Raf Simons의 첫 번째 SS22 컬렉션이 밀라노와 상하이에서 라이브로 공개됩니다.", showLocation: "이탈리아 밀라노 & 중국 상하이", showDetail: "#MiucciaPrada 와 #RafSimons 가 디자인한 #PradaSS22 여성복 컬렉션을 선보이기 위해 #Prada는 독특하고 새로운 형식을 탐구합니다 . 9월 24일, 이탈리아 밀라노와 중국 상하이에서 동시에 두 개의 런웨이 쇼를 개최합니다. Prada 2022년 봄/여름 여성복 쇼는 런웨이의 독특한 경험과 국경을 초월하여 결합하는 기술의 힘을 축하합니다.", loadingCount: "2,923,325회 돌파", youtubeID: "MY_yjWeQCvI", youtubeURL: "https://www.youtube.com/live/MY_yjWeQCvI?feature=share", mainImages2N: []),
    FashionShow(id: 8, showTitle: "미우치아 프라다와 라프 시몬스, 프라다 SS22 남성복 컬렉션 선보여", showLocation: "이탈리아 밀라노", showDetail: "기이한 여름 탈출, 자연과 인공물이 교감하는 공간에서 마무리. 쇼는 터널, 도시 공간 및 바다 사이의 전환을 나타냅니다. Prada SS22 남성복 컬렉션은 Sardinia뿐만 아니라 Fondazione Prada의 Deposito에서 밀라노에서 촬영되었습니다. Sardinian 커뮤니티에 대한 감사와 감사의 마음으로 #Prada는 MEDSEA 재단이 Capo Carbonara의 해양 보호 구역에 있는 Posidonia Oceanica 메도우를 재조림하여 해양 생태계를 복원하는 프로젝트를 지원합니다. Posidonia Oceanica는 지중해 고유의 해양 식물로 해양 생물에게 중요한 서식지를 제공하고 기후 변화 완화를 돕기 위해 CO2를 흡수하는 데 중요한 역할을 합니다. ", loadingCount: "1,888,888회 조회수 돌파", youtubeID: "sxK9_kotE1Y", youtubeURL: "https://www.youtube.com/live/sxK9_kotE1Y?feature=share", mainImages2N: []),
    FashionShow(id: 9, showTitle: "프라다 21 가을/겨울 여성 컬렉션 - 미우치아 프라다와 라프 시몬스와의 대화", showLocation: "2021. 2. 25.", showDetail: "여성복 컬렉션 은 변화와 변화, 가능성을 여는 아이디어에서 영감을 받았습니다. 이질적인 주제와 의도 사이의 융합은 인류의 본성을 반영합니다. 즉 남성과 여성이 각자 자신 안에 남성성과 여성성을 지니고 있다는 믿음입니다. 이 컬렉션은 단순함과 복잡함, 우아함과 실용성, 제한과 해방 사이의 지점, 변형된 기존의 양극 사이에 존재하는 공간을 탐구합니다. ", loadingCount: "3,672,152회 조회수 돌파", youtubeID: "yKw39s55vOM", youtubeURL: "https://www.youtube.com/live/yKw39s55vOM?feature=share", mainImages2N: []),
    FashionShow(id: 10, showTitle: "프라다 가을/겨울 21 남성복 컬렉션 - 미우치아 프라다와 라프 시몬스와의 대화 이어가기", showLocation: "2021. 1. 17.", showDetail: "남성복 컬렉션 은 접촉에 대한 친밀하고 개인적인 소망, 교류하고 공감하려는 우리의 욕구를 기본으로 합니다. 모든 것의 기초는 개인, 즉 인체와 그 자유입니다.", loadingCount: "3,672,812회 조회수 돌파", youtubeID: "kzLstA2lQm4", youtubeURL: "https://www.youtube.com/live/kzLstA2lQm4?feature=share", mainImages2N: []),
    FashionShow(id: 11, showTitle: "Prada 2021 봄/여름 여성복 쇼", showLocation: "2020. 9. 24.", showDetail: "음악 에 대한 미우치아 프라다(Miuccia Prada)와 라프 시몬스(Raf Simons)의 대화.", loadingCount: "2,607,830회 조회수 돌파", youtubeID: "RCQxPSNzU2Q", youtubeURL: "https://www.youtube.com/live/RCQxPSNzU2Q?feature=share", mainImages2N: []),

]

var fashionShowListLOUISVUITTON : [FashionShow] = [
  
    FashionShow(id: 0, showTitle: "Louis Vuitton 파리에서 Pharrell Williams의 2024 봄-여름 남성 패션쇼 | 루이 뷔통", showLocation: "프랑스 파리", showDetail: "2024년 봄-여름 남성 패션쇼. Pharrell Williams가 제작한 사운드트랙과 함께 선보인 남성복 크리에이티브 디렉터의 데뷔 쇼는 메종의 엠블럼을 돋보이게 하는 수많은 생생한 색상과 매혹적인 모티프를 선보였습니다.", loadingCount: "15,400,927회 조회수 돌파", youtubeID: "pDsjAIrmSKM", youtubeURL: "https://www.youtube.com/live/pDsjAIrmSKM?feature=share", mainImages2N: []),
    FashionShow(id: 1, showTitle: "Louis Vuitton 2024 크루즈 쇼 | 루이 뷔통", showLocation: "이탈리아 마조레 호수", showDetail: "니콜라 제스키에르가 5월 24일 수요일 이탈리아 마조레 호수의 이솔라 벨라에서 루이비통 2024 크루즈 쇼를 라이브로 선보였습니다.", loadingCount: "111,848,248회 조회수 돌파", youtubeID: "KwpN7tOzAaM", youtubeURL: "https://www.youtube.com/live/KwpN7tOzAaM?feature=share", mainImages2N: []),
    FashionShow(id: 2, showTitle: "Louis Vuitton Pre-Fall 2023 패션쇼 | 루이 뷔통", showLocation: "대한민국 서울", showDetail: "글로벌 프리미어에서 니콜라 제스키에르(Nicolas Ghesquière)는 대한민국 서울의 상징적인 잠수교에서 루이 비통의 2023 프리폴 여성 컬렉션 쇼를 선보였습니다.", loadingCount: "2,431,539회 조회수 돌파", youtubeID: "Y5XqhhMREo0", youtubeURL: "https://www.youtube.com/live/Y5XqhhMREo0?feature=share", mainImages2N: []),
    FashionShow(id: 3, showTitle: "Louis Vuitton 2023 가을-겨울 패션쇼 | 루이 뷔통", showLocation: "프랑스 파리 오르세 미술관", showDetail: "니콜라 제스키에르(Nicolas Ghesquière)가 파리 오르세 미술관에서 루이 비통 2023 가을-겨울 여성 컬렉션을 선보입니다.", loadingCount: "11,681,050회 조회수 돌파", youtubeID: "Q06nKm5us3E", youtubeURL: "https://www.youtube.com/live/Q06nKm5us3E?feature=share", mainImages2N: []),
    FashionShow(id: 4, showTitle: "Louis Vuitton 2023 가을-겨울 남성 패션쇼와 Rosalía의 라이브 공연 | 루이 뷔통", showLocation: "2023. 1. 19.", showDetail: "내면의 아이의 정신으로 가득 찬 새로운 루이 비통 2023 가을-겨울 컬렉션은 루이 비통 남성 관행의 유전학에 내재된 주제인 조형적 발달과 지리와 문화를 넘어 우리를 하나로 묶는 보편적인 인간 경험을 그립니다. 디지털 시대의 영향을 평가하면서 기술, 모티프 및 실루엣을 통해 연결성에 대한 고개를 끄덕입니다.", loadingCount: "13,002,751회 조회수 돌파", youtubeID: "4xA2rV1cXpM", youtubeURL: "https://www.youtube.com/live/4xA2rV1cXpM?feature=share", mainImages2N: []),
    FashionShow(id: 5, showTitle: "KŌKI, in Tokyo for Louis Vuitton x Yayoi Kusama", showLocation: "일본 도쿄", showDetail: "일본 여배우 KŌKI, Louis Vuitton과 함께 도쿄를 탐험하며 도시 전체에 몰입감 넘치는 새로운", loadingCount: "22,048회  조회수 돌파", youtubeID: "Unj2jvTikZw", youtubeURL: "https://www.youtube.com/live/Unj2jvTikZw?feature=share", mainImages2N: []),
    FashionShow(id: 6, showTitle: "Louis Vuitton 2023 봄-여름 패션쇼 | 루이 뷔통", showLocation: "프랑스 파리", showDetail: "니콜라 제스키에르 는 10월 4일 화요일 오후 4시(CEST) 파리에서 필립 파레노(Philippe Parreno)의 특별 세트 디자인으로 장엄한 파리 루브르 박물관의 쿠르 까레(Cour Carrée) 주변에서 다시 한 번 자신의 다음 #루이비통 컬렉션을 선보입니다", loadingCount: "10,641,594회 조회수 돌파", youtubeID: "Xn5qX2qbPdk", youtubeURL: "https://www.youtube.com/live/Xn5qX2qbPdk?feature=share", mainImages2N: []),
    FashionShow(id: 7, showTitle: "Louis Vuitton Men's Spring-Summer 2023 Show in Aranya, China | 루이 뷔통", showLocation: "중국 아라냐", showDetail: "파리에서 데뷔한 2023년 봄-여름 남성 컬렉션은 상상력이 치유하고, 재생하고, 고양시킬 수 있다는 믿음으로 통합된 시적인 속편을 위해 중국 아라냐로 여행했습니다. 두 번째 프리젠테이션을 위해 쇼는 확대된 놀이터의 아이디어를 확장하여 광대한 샌드박스가 어린아이 같은 상상의 구성물에 대한 초대장이 됩니다.", loadingCount: "86,313회 조회수 돌파", youtubeID: "1xxJcagawDM", youtubeURL: "https://www.youtube.com/live/1xxJcagawDM?feature=share", mainImages2N: []),
    FashionShow(id: 8, showTitle: "Louis Vuitton 남성 봄-여름 2023 쇼 | 루이 뷔통", showLocation: "프랑스 루브르 박물관", showDetail: "상상력이 치유하고, 재생하고, 고양시킬 수 있다는 신념에 힘입어 루이 비통 남성 스튜디오는 2023년 봄-여름 컬렉션을 선보입니다. 확대된 놀이터처럼 루브르 박물관의 Cour Carrée에 세워진 거대한 어린이 장난감 경마장은 상상을 위한 노란 벽돌 길이 됩니다.", loadingCount: "8,778,210회 조회수 돌파", youtubeID: "6SX50BOmArI", youtubeURL: "https://www.youtube.com/live/6SX50BOmArI?feature=share", mainImages2N: []),
    FashionShow(id: 9, showTitle: "Louis Vuitton 방콕 남성 가을-겨울 2022 쇼 | 루이 뷔통", showLocation: "태국 방콕", showDetail: "1월 파리에서 런웨이 데뷔를 한 𝓛𝓸𝓾𝓲𝓼 Dreamhouse™️가 2022 가을-겨울 남성 컬렉션과 함께 방콕에 상륙합니다. 버질 아블로(Virgil Abloh)의 중심인 보이후드 이데올로기(Boyhood Ideology®) 렌즈를 통해 아이의 눈으로 세상을 바라보는 이 컬렉션은 대중적으로 사회적 원형에 결부된 드레스 코드를 변형하고 새로운 방식으로 패치워크합니다. 재료와 기법을 통해 초현실주의의 몸짓이 형성되어 익숙한 것을 추상화하고 우리의 지평을 확장합니다.", loadingCount: "5,457,223회 조회수 돌파", youtubeID: "i5PAQDEEjbc", youtubeURL: "https://www.youtube.com/live/i5PAQDEEjbc?feature=share", mainImages2N: []),
    FashionShow(id: 10, showTitle: "크루즈 2023 패션쇼 | 루이 뷔통", showLocation: "미국 캘리포니아", showDetail: "루이 비통은 5월 12일 캘리포니아 솔크 연구소(Salk Institute) 너머로 지는 해와 함께 공개된 니콜라 제스키에르(Nicolas Ghesquière)의 2023 크루즈 컬렉션을 선보입니다. 이 건축 걸작의 눈에 띄는 브루탈리스트 설정과 공명하도록 디자인된 이 컬렉션은 태양을 영예의 손님으로 초대하고 온도 변화가 스타일리시한 템포를 설정하는 이 옷장의 진화에 적극적인 역할을 합니다.", loadingCount: "4,090,257회 조회수 돌파", youtubeID: "qu3fySrXLpY", youtubeURL: "https://www.youtube.com/live/qu3fySrXLpY?feature=share", mainImages2N: []),
    FashionShow(id: 11, showTitle: "Louis Vuitton 2022 가을-겨울 여성 패션쇼", showLocation: "파리 오르세 미술관", showDetail: "파리 오르세 미술관에서 공개된 2022 가을-겨울 여성 컬렉션은 생생한 낭만주의, 영감을 주는 이상주의, 미래와 더 나은 세상을 위한 희망으로 젊은이들에게 바칩니다. 니콜라 제스키에르(Nicolas Ghesquière)는 기분에 따라 믹스매치할 수 있는 젊음의 자기 표현에서 영감을 받은 컬렉션을 디자인했습니다. 킬트, 오버사이즈 가디건, 실크 팬츠는 교복에서 영감을 얻었으며 쉬폰과 튤 소재의 밀푀유 드레스는 움직임의 자유라는 컬렉션의 주제와 함께 역동적이고 순간적인 신기루 같은 효과를 실루엣에 부여합니다. 또한 David Sims의 1990년대 사진을 적용하여 자수를 놓았는데 마치 십대 침실의 꽃무늬 벽지에 걸린 콘서트 티셔츠나 포스터를 연상케 합니다.", loadingCount: " 3,280,611회 조회수 돌파", youtubeID: "ai7M9THce-w", youtubeURL: "https://www.youtube.com/live/ai7M9THce-w?feature=share", mainImages2N: []),

]

var fashionShowListYSL : [FashionShow] = [
  
    FashionShow(id: 0, showTitle: "CAI GUO-QIANG의 SAKURA와 함께 하늘이 피어날 때", showLocation: "2023. 6. 29", showDetail: "When the Sky Blooms with Sakura by Cai Guo-Qiang by Anthony Vaccarello가 Saint Laurent를 위해 커미션한 작품, 예술가 Cai Guo-Qiang은 낮에 불꽃놀이를 제작했습니다. 2011년 일본 대지진과 그로 인한 쓰나미. 하늘에 순식간에 피는 벚꽃은 언젠가 땅이 분홍색 벚꽃 바다가 될 수 있는 집단적 희망과 미래를 전달합니다.", loadingCount: "1,668,940회 조회수 돌파", youtubeID: "I2uIi0GT8Qg", youtubeURL: "https://www.youtube.com/live/I2uIi0GT8Qg?feature=share", mainImages2N: []),
    FashionShow(id: 1, showTitle: "SAINT LAURENT - 남성 여름 24 패션쇼", showLocation: "2023. 6. 13.", showDetail: "24 by Anthony Vaccarello 남성 여름 24 컬렉션을 위해 Anthony Vaccarello는 특히 남성성과 여성성의 상호작용을 통해 최근 생 로랑 컬렉션에서 볼 수 있는 아이디어를 재현하고 발전시켰습니다. 하우스의 마지막 여성복 프레젠테이션은 새로운 구성으로 등장하여 진화하는 Saint Laurent 옷장의 개방형 다재다능함을 보여줍니다. 핵심 실루엣은 날카롭게 유지되고 예상치 못한 구조의 가벼움이 스며듭니다. 바지. 테일러드 재킷을 입었을 때 어깨가 과장되지 않았을 때, 브랜드의 과거에 대한 향수를 제거한 채 그대로 노출됩니다.", loadingCount: "5,126,022회 조회수 돌파", youtubeID: "9FJripP8NbU", youtubeURL: "https://www.youtube.com/live/9FJripP8NbU?feature=share", mainImages2N: []),
    FashionShow(id: 2, showTitle: "SAINT LAURENT - WOMEN'S WINTER 23 쇼", showLocation: "2023. 3. 1.", showDetail: "Women's Winter 23 by Anthony Vaccarello", loadingCount: "4,959,628회 조회수 돌파", youtubeID: "xwnJ-x_SdEI", youtubeURL: "https://www.youtube.com/live/xwnJ-x_SdEI?feature=share", mainImages2N: []),
    FashionShow(id: 3, showTitle: "SAINT LAURENT - 남성 겨울 23 패션쇼", showLocation: "2023. 1. 18.", showDetail: "Men's Winter 23 Show by Anthony Vaccarello Soundtrack by SebastiAn ", loadingCount: "5,965,117회 조회수 돌파", youtubeID: "FNyluzlx4OA", youtubeURL: "https://www.youtube.com/live/FNyluzlx4OA?feature=share", mainImages2N: []),
    FashionShow(id: 4, showTitle: "SAINT LAURENT - 여성 여름 23 쇼", showLocation: "2022. 9. 28.", showDetail: "Women's Summer 23 Show by Anthony Vaccarello", loadingCount: "4,396,047회 조회수 돌파", youtubeID: "MqRaEXbqMxA", youtubeURL: "https://www.youtube.com/live/MqRaEXbqMxA?feature=share", mainImages2N: []),
    FashionShow(id: 5, showTitle: "SAINT LAURENT - 남성 봄 여름 2023 쇼", showLocation: "2022. 7. 16.", showDetail: "보름달이 뜨는 것을 몇 번 더 볼 것인가? 아마도 20. 그러나 모든 것이 무한해 보입니다.", loadingCount: "5,979,202회 조회수 돌파", youtubeID: "AxHmR6kEL4k", youtubeURL: "https://www.youtube.com/live/AxHmR6kEL4k?feature=share", mainImages2N: []),
    FashionShow(id: 6, showTitle: "SAINT LAURENT - WOMEN'S WINTER 22 쇼", showLocation: "2022. 3. 2.", showDetail: "2022 여성 겨울 패션쇼 by Anthony Vaccarello", loadingCount: "5,978,026회 조회수 돌파", youtubeID: "ELOW5lHywvI", youtubeURL: "https://www.youtube.com/live/ELOW5lHywvI?feature=share", mainImages2N: []),
    FashionShow(id: 7, showTitle: "SAINT LAURENT - 2022 여성 여름 쇼", showLocation: "프랑스 파리", showDetail: "2022년 여성 여름 쇼 by Anthony Vaccarello", loadingCount: "4,981,902회 조회수 돌파", youtubeID: "UfQaAhD6Vzg", youtubeURL: "https://www.youtube.com/live/UfQaAhD6Vzg?feature=share", mainImages2N: []),
    FashionShow(id: 8, showTitle: "SAINT LAURENT - 남성 봄 여름 2022 - 전체 쇼", showLocation: "프랑스 파리", showDetail: "Venezia Men's Spring Summer 22 by Anthony Vaccarello Anthony Vaccarello는 새 컬렉션 공개의 배경이 되는 Doug Aitken의 대규모 설치 작업인 Green Lens를 의뢰했습니다.", loadingCount: "6,683,563회 조회수 돌파", youtubeID: "E6y4Rnfi2xc", youtubeURL: "https://www.youtube.com/live/E6y4Rnfi2xc?feature=share", mainImages2N: []),


]

