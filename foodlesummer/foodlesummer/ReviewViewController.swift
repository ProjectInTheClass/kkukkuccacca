//
//  ReviewViewController.swift
//  foodlesummer
//
//  Created by 방문사용자 on 2018. 8. 10..
//  Copyright © 2018년 김태현. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController, UITableViewDataSource {
    
    //리뷰 데이터 들어가야 할 부분///
    let reviews : [Review] = [
        Review( date : 20180814 , review : "공간이 멋지다 주택을 개조한듯 주문을 하고 윗층에 올라가보면 넓은 야외 테라스도 있고 공간 자체가 굉장히 깔끔하고 이쁘다 :) 여러 굿즈들, 커피관련 머신들 팔고 있어서 보는 재미도 있다 커피 또한 공간처럼 깔끔해서 좋았다", reviewRate : 3.5, nickName : "nickname", cafenamereview : "트리아뇽" ),
        Review( date : 20180801 , review : "비엔나커피는 꽤 맛있는데 아이스 롱블랙은 밋밋했다. 롱블랙이 조금만 더 특색있는 맛이면 좋았을텐데. 인테리어는 좋다. 주택을 개조한 작은 공간인데, 작아도 동선이 편리하고 예쁘게 잘 꾸며놓으셨다. 테이블은 총 6개 정도인데, - 앞서 다른 분들이 리뷰하셨듯, 메인 테이블(약 6인용)은 창밖에 나무도 있고 자리도 비교적 편안해보인다. 그 옆의 작은 테이블도 앉아보진 않았지만 채광 등이 좋아보였다. - 반대로 커피머신을 바라보는 자리의 2인용 자리 세 개는.. 남자에겐 추천하기 어렵다. 의자는 남녀 한 쌍이 앉기에 가까스로 딱 맞거나 다소 비좁고, 의자와 테이블 사이 간격은 꽤나 좁아서 남자인 일행은 다리를 완전히 틀어 앉아야 했다. 에구.", reviewRate : 4.2, nickName : "nickname", cafenamereview : "알베르" ),
        Review( date : 20180723 , review : "커피와 우유가 섞이는 모습과 그 위에 크림 올린것까지 너무 컵이랑 다 잘어울리게 이뻐서 사진 여러장 찍었당. 커피는 적당히 무거운편! 거기에 무겁지 않은 크림을 올려서 밸런스를 잘맞췄다. 앙버터 요즘 거의 1일 1앙버터를 하고 있는듯. 버터는 두꺼워서 좋았구 팥은 원래 별로 좋아하지 않아서 그냥...그냥 파는 팥과는 다른거는 모르겠었다.라고 맛 별로 없는 듯이 말했지만 맛있게 먹었고 나오자마자 흡입함ㅋㅋㅋㅋㅋ . . 평일이어도 성수동은 핫했다...! 웨이팅은 없었지만 거의 만석이었던듯. 카페이름과 어울리는 톤과 분위기를 가진 카페였다.", reviewRate : 4.8, nickName : "nickname", cafenamereview : "이디아커피랩" ),
        Review( date : 20180503 , review : "쏘쏘와 맛있다 사이. 커피 무난하구 케이크 무난한데 매우 친절하고 분위기가 안락하고 좋음. 다만 공간이 작은데 손님이 많아서 자리가 있는지 미리 확인 필요하고 멀리서 막 찾아갈 정도는 아님", reviewRate : 4.2, nickName : "nickname", cafenamereview : "오아시스" ),
        Review( date : 20180501 , review : "부드러운 커피우유같은 라떼 추천 ! 유달리 사람이 많아 들어온 곳- 망플에 라떼가 맛있다는 후기가 있길래 왔는데 고소하고 연한 라떼 맛이 좋다 샷추가해서 다음엔 먹어보고 싶다 시나몬롤은 첫 식감이 다소 푸석한 줄 알았는데 진짜 맛있게 다 먹었다 :) 스콘 식감이라 바삭바삭 ! 홈메이드 느낌 ! 재방문해서도 아이스라떼에 시나몬롤 먹을것", reviewRate : 3.7, nickName : "nickname", cafenamereview : "미엘" ),
        Review( date : 20180403 , review : "성수동에서 주로 가는 곳들과는 떨어져 있어 가기는 살짝 힘들었던, 뭔가 주변은 읍내길(?) 같은데, 카페가 딱!ㅎㅎ 내부는 살짝 힙하면서 차분한 느낌..?! 사장님도 넘 친절하셨고, 조용히 커피마시기 좋았어요. “모히토스파클링”☆ - 요거 진짜 최고! 카페에서 파는 모히또 중에서 1등!! 민트를 넉넉하게, 팍팍! 넣어주세요. 탄산수도 따로 나오니 원하는대로 마시는 거라 더 좋았고, 탄산수라서 더 시원하고 청량감이 있었던 것 같아요. 넘 더웠는데 아주 씨원하게 더위가 가셨네요! ", reviewRate : 4.0, nickName : "nickname", cafenamereview : "Less is More")
    ]
    
//    struct Review{
//        var date: String
//        var review: String
//        var reviewRate: Double
//        var nickName: String
//        var userImage: String
//    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return reviews.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReviewCell", for: indexPath) as! ReviewTableViewCell
        
        cell.reviewdateLabel.text = String(reviews[indexPath.row].date)
        cell.rateLabel.text = String(reviews[indexPath.row].reviewRate)
        cell.reviewLabel.text = reviews[indexPath.row].review
        cell.cafenameLabel.text = reviews[indexPath.row].cafenamereview
        
        return cell
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
