# Project_TeaU
코로나와 바쁜 일상에 지친 현대인들이 차를 통해서 편안함과 느긋함을 느끼며 힐링을 할 수 있게 도움을 주기 위해 사이트를 제작했습니다.

일반 차 사이트의 1가지 찻잎만을 사용한 퓨어티를 판매하는 점과는 다르게 퓨어티와 더불어 2가지 이상의 찻잎을 조합한 블렌딩티들을 판매하는 사이트로 기획했고, 티파인더를 통해 구매자의 취향에 맞는 차를 찾아볼수 있게 하였습니다.
또한 정기구독을 통해서 구매자가 선택한 취향에 맞춰 매 달 다양한 다른 차를 받아볼 수 있게 제작하였습니다.

---

### **프로젝트 개요**
<br>

**프로젝트 명**

* TeaU (팀 프로젝트)

**개발기간** 

* 2021년 5월 24일~ 2021년 7월 12일

* 기획/ 분석/ 설계 : 약 3주 진행

* 구현 : 약 4주 진행

**개발 환경**

* 프로그램 언어 : Java

* framework : Spring, Mybatis

* DBMS : Oracle

* IDE : Eclipse, Visual Studio Code, sqlDeveloper

* 화면언어 : HTML5, CSS, Javascript, jQuery, BootStrap

* 서버프로그램 언어 : Servlet, JSP, Ajax
* 서버 : ApacheTomcat v8.5

* 사용 API : Daum우편번호 API, INI API(KG이니시스 결제)

---

<h3>설계</h3>

* 화면설계 : Balsamic Cloud 전체적 화면의 뼈대 제작

* DB설계 : Aquerytool
* 기능리스트 제작하여 기능구현 후 테스트
* 세부일정표 제작

---

<h3>담당 파트 </h3>

* 메인페이지, 마이페이지, 로그인·회원가입, 구독페이지 디자인(Front)
* 마이페이지 : 구독정보조회 / 구독정보 수정 / 구독 해지
* 씨앗·새싹구독 : 구독 신청
* Shop : 모든상품 리스트 / 테마별 상품 리스트(계절,사용자,베이스) / 상세상품보기

---

<h3>기술이슈 및 해결</h3>
<br>

**1. JSP의 중복문제**

페이지마다 삽입과 수정에서 비슷한 JSP가 사용되었고, 그 과정에서 늘어나는 JSP의 수를 줄이기 위해 Ajax를 사용하여 정보가 있을 때와 없을 때로 구분하여 다른 경로로 정보를 보내주어 분기처리 하였습니다.

<br>

**2. 마이페이지에서 구독수정시 기존 선택지들이 선택되어 있도록 하는 문제**

구독수정을 할 때 기존에 선택한 체크박스가 선택되어있게 하도록 수정 메소드에서는 정보를 보내고 Javascript를 사용하여 정보가 있을 때 해당하는 정보들이 선택되어 있게 하였습니다.

<br>

**3. 회원 정보의 세션 유지**

구독과 상품구매와 같은 주된 기능은 회원만 가능하도록 설계하여 회원의 정보를 세션에서 계속 유지해주는 기능이 필요했습니다.
'com_lib.js'라는 공통으로 쓰이는 js 파일을 만들어 header.jsp에 추가해주었습니다.
그리고 header에서 페이지가 로드될 때 com_lib.js를 활성화해줄 메소드를 호출하고, 해당 메소드는 Ajax를 사용하여 session에서 존재하는 회원의 정보를 리턴받습니다.
리턴 받은 정보는 다시 다른 메소드를 통해 header로 이동하고 header에서는 파라미터로 받은 회원의 정보로 null인지 아닌지를 판별하여 주된 기능을 수행하였습니다.
회원 정보가 있다면 true로 모든 기능을 사용할 수 있고, 만약 회원 정보가 없다면 '로그인 후 이용해주세요' 라는 메시지를 띄운 후 로그인 페이지로 이동하도록 하였습니다.

<br>

**4. 1인 1구독 시스템** 

구독은 1명의 구매자가 여러가지 구독을 한꺼번에 할 수 없도록 1인 1구독으로 설계하였습니다. 
회원테이블에 구독컬럼을 추가하고 구독과 미구독을 1과 0으로 구분하여 0일때만 구독이 가능하도록 하였습니다.

<br>

**5. 테마별 상품리스트 조회 문제**

상품이 많기 때문에 상품판매 페이지를 3가지 대분류로 나눈 후 그 안에서도 각각 분류를 하여 구성했습니다. 그래서 해당 카테고리를 누르면 그 카테고리에 맞는 상품들만 조회되도록 Javascript의 data-filter를 사용하여 구현 하였습니다.
