CREATE TABLE SCHOOLMEALTBL 
(
  MENU_DATE DATE NOT NULL 
, MTYPE VARCHAR(3) NOT NULL 
, MENU VARCHAR(50) 
);

CREATE TABLE MEMBER 
(
  ID VARCHAR(30) NOT NULL 
, NAME VARCHAR(20) NOT NULL 
, TEL VARCHAR(20) NOT NULL 
, EMAIL VARCHAR(40) NOT NULL 
, ADDRESS VARCHAR(100) 
, PW VARCHAR(50) NOT NULL 
, PWCHK VARCHAR(50) NOT NULL 
);

CREATE TABLE SUGGESTION
(
  ID VARCHAR(30) NOT NULL
, TITLE VARCHAR(50) NOT NULL
, CONTENT VARCHAR(100) NOT NULL
, WDATE DATETIME NOT NULL
);

CREATE TABLE COMMENTS
(
  ID VARCHAR(30) NOT NULL
, TITLE VARCHAR(50) NOT NULL
, CONTENT VARCHAR(100) NOT NULL
, WDATE DATETIME NOT NULL
);

insert into schoolmealtbl values('2019-09-02','조식','백미밥 다시마무채국 스팸구이 메추리알곤약장조림 청경채무침 깍두기 그릭요거트');
insert into schoolmealtbl values('2019-09-02','중식','보리밥 전주식콩나물국밥 고인돌갈비 우엉어묵채볶음 무말랭이무침 포기김치 망고스틴');
insert into schoolmealtbl values('2019-09-02','석식','니가가락국수 김치밥 야채튀김 콘샐러드 단무지 초코모찌롤');
insert into schoolmealtbl values('2019-09-03','조식','유부초밥 가쓰오장국 치킨너겟 양상추샐러드&머스터드D 깍두기 비스킷&레드잼');
insert into schoolmealtbl values('2019-09-03','중식','흑미밥 꽃게탕 삼겹살김치볶음 두부구이 채소스틱 배추겉절이');
insert into schoolmealtbl values('2019-09-03','석식','현미밥 부대찌개 닭꼬치 진미채무침 양상추샐러드&사우전D 포기김치');
insert into schoolmealtbl values('2019-09-04','조식','잡곡밥 조랭이떡국 소고기장조림 연두부*양념간장 양념깻잎지 포기김치 조각감');
insert into schoolmealtbl values('2019-09-04','중식','빠네크림파스타 추가밥 닭다리오븐구이 감자튀김 열대과일샐러드&유자D 자색단무지 피치에빠진코코');
insert into schoolmealtbl values('2019-09-04','석식','팽이장국 제육볶음 고구마맛탕 콩나물파채무침 배추겉절이 수수밥');
insert into schoolmealtbl values('2019-09-05','조식','현미밥 쇠고기미역국 언양식불고기 찐고구마 무생채 백김치');
insert into schoolmealtbl values('2019-09-05','중식','잡곡밥 닭곰탕 코다리무조림 소시지오믈렛 부추겉절이 포기김치 레드벨벳치즈케익');
insert into schoolmealtbl values('2019-09-05','석식','참치마요덮밥 김칫국 납작비빔만두 시즌샐러드 깍두기 쥬시쿨');
insert into schoolmealtbl values('2019-09-06','조식','소고기콩나물밥 오징어무국 김구이-양반김 계란후라이 시금치고추장무침 포기김치');
insert into schoolmealtbl values('2019-09-06','중식','꼬들꼬들옥수수밥 두부가득된장국 족발 메밀막국수 알배기배추쌈 보쌈김치');
insert into schoolmealtbl values('2019-09-06','석식','기장밥 나가사끼짬뽕국 고추잡채볶음*꽃빵 계란찜 상추겉절이 깍두기');
insert into schoolmealtbl values('2019-09-09','조식','햄치즈토스트 초코후레이크&우유 추가밥 돌자반 양상추샐러드&자몽D 볶음김치');
insert into schoolmealtbl values('2019-09-09','중식','추가밥 마라탕 궈바로우 계란찜 청경채무침 포기김치 딸기우유');
insert into schoolmealtbl values('2019-09-09','석식','흑미밥 육개장 코코넛통새우&타르소스 푸실리칠리소스볶음 깍두기 골드키위');
insert into schoolmealtbl values('2019-09-10','조식','현미밥 감자양파국 베이컨연어구이 시금치프리타타 미역줄기볶음 깍두기 유기농배즙');
insert into schoolmealtbl values('2019-09-10','중식','흑미밥 차돌된장찌개 낙지닭갈비 샐러드피자 파김치 포기김치 반건시');
insert into schoolmealtbl values('2019-09-10','석식','잡곡밥 호박고추장찌개 목살스테이크 단호박건포도범벅 양상추샐러드&오리엔탈D 깍두기');
insert into schoolmealtbl values('2019-09-11','조식','영양닭죽 추가밥 안심돈강정 과일샐러드 무말랭이무침 배추겉절이');
insert into schoolmealtbl values('2019-09-11','중식','기장밥 소고기무국 매운등갈비찜 동그랑땡*새송이전 숙주나물무침 포기김치 아이스찰떡');
insert into schoolmealtbl values('2019-09-11','석식','차조밥 순두부찌개 오리불고기 집게다리맛살튀김 부추양파무침 깍두기');
insert into schoolmealtbl values('2019-09-17','조식','곤드레밥&양념장 두부된장국 한입쏙까스 호박버섯볶음 도시락김 포기김치');
insert into schoolmealtbl values('2019-09-17','중식','보리밥 소고기무국 숯불닭갈비 해물파전 잡채 포기김치');
insert into schoolmealtbl values('2019-09-17','석식','보리밥 해물누룽지탕 꿔바로우탕수육 고기&김치만두 오이생채 포기김치');
insert into schoolmealtbl values('2019-09-18','조식','쌀밥 샤브샤브국 계란찜 고구마맛탕 콩나물잡채 포기김치');
insert into schoolmealtbl values('2019-09-18','중식','스팸김치볶음밥 부추계란국 찹큐브스테이크 콩나물무침 포기김치 과일요거트샐러드');
insert into schoolmealtbl values('2019-09-18','석식','율무밥 미역국 포테이토치킨까스 새송이버섯야채볶음 파스타샐러드 포기김치');
insert into schoolmealtbl values('2019-09-19','조식','쌀밥 들깨무채국 치즈닭살볶음 매쉬드포테이토 상추겉절이 포기김치');
insert into schoolmealtbl values('2019-09-19','중식','수수밥 두부된장국 쭈꾸미불고기 쫄면 오이맛살무침 포기김치 모듬과일꼬치');
insert into schoolmealtbl values('2019-09-19','석식','잡곡밥 부대찌개 훈제오리채소무침 허니버터만두커틀릿 깻잎무쌈 포기김치');
insert into schoolmealtbl values('2019-09-20','조식','쌀밥 배추된장국 오징어브로콜리볶음 두부구이 깍두기 김맛아몬드');
insert into schoolmealtbl values('2019-09-20','중식','잡곡밥 설렁탕*다대기 삼치데리야끼구이 소세지떡볶음 부추양파무침 배추겉절이');
insert into schoolmealtbl values('2019-09-20','석식','수수밥 모듬어묵국 고구마닭갈비 순대채소볶음 부추단무지무침 포기김치');
insert into schoolmealtbl values('2019-09-23','조식','추가밥 보름달군만두 어묵채소볶음 깍두기 유기농오렌지주스 모닝빵샌드위치');
insert into schoolmealtbl values('2019-09-23','중식','현미밥 삼색수제비국 치즈닭갈비 참치마카로니샐러드 숙주맛살무침 포기김치 멜론');
insert into schoolmealtbl values('2019-09-23','석식','수수밥 호박고추장찌개 오징어치즈떡볶음 도깨비핫도그&케찹 시금치나물 포기김치');
insert into schoolmealtbl values('2019-09-24','조식','하이라이스 소고기무국 목화솜탕수육 꽃맛살샐러드 얼갈이겉절이 포기김치');
insert into schoolmealtbl values('2019-09-24','중식','잡곡밥 유부된장국 돼지불고기 오꼬노미야끼 상추무침 포기김치 조각감');
insert into schoolmealtbl values('2019-09-24','석식','참치김치볶음밥 계란파국 사각햄구이 도시락김 참깨드레싱샐러드 포기김치 쥬시쿨맛젤리');
insert into schoolmealtbl values('2019-09-25','조식','쇠고기야채죽 추가밥 계란장조림 무말랭이양배추무침 백김치 초코우유');
insert into schoolmealtbl values('2019-09-25','중식','해물리조또 콘스프 치즈미트볼까스 꿀치즈토마토 오이피클 마늘바게트');
insert into schoolmealtbl values('2019-09-25','석식','샐프김밥 곤약어묵국 국물떡볶이 새우튀김&김말이튀김 콩나물무침 포기김치');
insert into schoolmealtbl values('2019-09-26','조식','쌀밥 감자양파국 떡갈비스틱 연두부 양념간장 새송이채소볶음 포기김치');
insert into schoolmealtbl values('2019-09-26','중식','오곡밥 뼈없는감자탕 데리야끼코다리강정 오징어김치전 양배추맛살무침 깍두기');
insert into schoolmealtbl values('2019-09-26','석식','흑미밥 근대된장국 더블치즈스테이크 계란말이 포기김치 애플망고주스');
insert into schoolmealtbl values('2019-09-27','조식','쌀밥 맑은순두부찌개 돼지갈비찜 콘치즈구이 무생채 포기김치');
insert into schoolmealtbl values('2019-09-27','중식','수수밥 호박된장국 바베큐폭립 야채튀김 레인보우치즈샐러드 포기김치 조각배');
insert into schoolmealtbl values('2019-09-27','석식','차조밥 김치찌개 크런치새우치킨 두부구이 단호박 깍두기');
insert into schoolmealtbl values('2019-09-30','조식','모지치즈번 초코후레이크&우유 후리가케밥 소시지채소볶음 단호박샐러드 깍두기 조각사과');
insert into schoolmealtbl values('2019-09-30','중식','흑미밥 육개장&당면사리 고등어구이&와사비장 소떡롤 콩나물무침 총각김치 망고요거트');
insert into schoolmealtbl values('2019-09-30','석식','잡곡밥 참치어묵국 아쿠아돈가스 푸실리칠리소스볶음 포기김치 청포도주스');


SELECT * FROM SCHOOLMEALTBL;
SELECT * FROM suggestion;
SELECT * FROM comments;