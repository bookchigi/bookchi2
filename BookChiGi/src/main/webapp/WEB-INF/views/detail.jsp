<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>북을 울려라~ 북치기</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
			integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
			crossorigin="anonymous">
		</script>
		<script type="text/javascript">
			      </script>
		<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
			integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
			crossorigin="anonymous">		 
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>	 
		<style type="text/css">
			body, body * {
				margin: 0px;
				padding: 0px;
			}
			
			body {}
			
			#mobileSubLine {
				background-color: red;
			}
			
			.tabpage {
				min-height: 720px;
			}		
			.content{
			position: relative;
			}	
			.pager{
				text-align: left;
			}
			
		</style>
	</head>
	<body>	
		<div data-role="page">
			<div data-role="header">
				<c:import url="fragment/headerbar.jsp"></c:import>
			</div>						
			<div>			
				<div class="content">
					<div class="col-sm-6 col-md-4" >						
							<div class="thumbnail">							
								<img class="rounded" src="resources/Book/book_001.jpg" style="max-width: 100%; height: auto;" alt="..."></br>
						  <button style="display: table; margin-left: auto; margin-right: auto;" type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">읽어보기</button>						
								<div class="caption">												
						<div class="container">						 
						  <!-- Trigger the modal with a button -->
						  <!-- Modal -->
						  <div class="modal fade" id="myModal" role="dialog">
						    <div class="modal-dialog">
						    						    
						      <!-- Modal content-->
						      <div class="modal-content">
						        <div class="modal-header">
						          <button type="button" class="close" data-dismiss="modal">&times;</button>
						          <h4 class="modal-title">책이름</h4></br>
						          <center><img src="resources/Book/book_001.jpg"><hr></br></center>
						          </br><h2>작품 소개</h2></br>
						          </br><p>전 세계가 극찬한 천체물리학 입문서! 
빅뱅, 블랙홀, 암흑 물질에서 상대성이론까지 
우주와 시간의 경이를 이해하는 새로운 방법을 개척하다 

*** 뉴욕타임스 베스트셀러 *** 
*** 아마존 베스트셀러 *** 
*** 전 세계 15개국 출간! *** 


스티븐 호킹의 직속제자이자 차세대 천체물리학자 
크리스토프 갈파르가 알려주는 우주의 신비 
만약 우리가 우주비행사가 되어 평생 우주를 여행한다면, 우주에 대해서 얼마나 알 수 있을까? 아마 빛의 속도로 움직인다 해도, 우주의 끝에 도달할 수는 없을 것이다. 하지만 뉴턴을 비롯하여 아인슈타인, 슈뢰딩거, 호킹에 이르기까지 수많은 과학자들은 직접 우주에 가지 않고도 순전히 머릿속의 생각만으로 우주와 만물의 법칙을 밝혀냈다. 이를 ‘생각실험’이라고 하는데, 『우주, 시간, 그 너머』(원제 : The Universe in your hand)는 이렇게 인류의 역사를 빛낸 위대한 과학자들의 실험 방법으로 우리를 우주와 시간의 세계로 인도한다. 이 책의 안내에 따라 138억 년 전의 빅뱅에서 우주의 멸망까지 블랙홀과 원자의 세계를 넘나들며 시공간의 기원과 원리를 알아내기 위한 여정을 떠나보자. 
이 책의 저자인 크리스토프 갈파르는 스티븐 호킹 박사의 직속 제자이자 학계가 주목하는 차세대 천체물리학자이다. 크리스토프 갈파르의 인생 목표는 배경지식이 전혀 없는 대중들에게도 최첨단의 과학 지식을 전파하는 것이다. 그리고 그의 첫 대중 과학서인 『우주, 시간, 그 너머』를 출간하며, 그 목표를 달성하기 위해 ‘모든 독자가 한 명도 뒤처지지 않고 따라올 수 있는 책’을 쓰겠다고 자부했다. 그리고 그 포부에 부응하듯 이 책은 출간되자마자 뉴욕타임스, 아마존 베스트셀러에 오르고 스페인, 프랑스 등 전 세계 15개국에서 열렬한 대중의 호응을 받았다. “흥미진진하고 이해하기 쉽다”, “만화 《신기한 스쿨버스》의 프리즐 선생님이 천문학을 공부하고 쓴 책 같다”, “이 책에 완전히 마음을 빼앗겼다” 등의 찬사가 쏟아졌다. 

“우리의 여행은 지구에서 수 광년 떨어진 지구 반대편에서 시작되었다!” 
천문학에서 양자 물리학까지 현대 과학 전반을 아우르며 
시공간의 기원을 찾아 떠나는 스페이스 오디세이! 
이 책이 일반적인 과학서와 가장 크게 다른 점은 바로 소설의 형식을 취하고 있다는 것이다. 이 책은 어느 여름밤, 갑자기 떠난 우주여행으로 이야기를 시작한다. 하지만 우주선을 타고 출발하는 것은 아니다. 중력의 영향을 받지 않고 어디든 갈 수 있는 정신체(精神體) 상태가 되어, 달과 태양계, 안드로메다를 지나 블랙홀과 저 먼 우주의 끝까지 부유한다. 이 정신체는 시간의 영향도 받지 않는다. 따라서 시간을 거슬러 빅뱅의 순간을 경험하기도 하고 미래로 가서 태양의 멸망을 지켜볼 수 있다. 이렇게 우주의 시작과 멸망, 공간의 끝을 1인칭 시점에서 여행기 형식으로 풀어쓴 이 책을 읽다보면 빅뱅이론, 평행우주이론 등 우주와 관련한 대표적인 지식들을 자연스럽게 습득할 수 있다. 또한 블랙홀에 들어가면 어떠한 일이 벌어지는지, 태양의 표면에서는 어떠한 작용이 벌어지는지 등 우주 공간에서의 다양한 작용들과 원리를 어려운 과학 공식 없이도 생생한 묘사를 통해 직관적으로 이해할 수 있다. 
한편 우주여행을 마친 뒤에는 원자 세계로 여행을 떠난다. 우주를 여행할 때는 은하를 자유롭게 떠다니는 생명체가 되었다면 이번에는 원자보다 작은 크기가 되어보는 것이다. 이렇게 ‘미니 버전’이 되어 원자의 구조와 원자를 구성하는 입자와 그들의 작용을 살펴본다. 나아가 양자세계와 물리학 이론의 기초이자 가장 어려운 학문이라는 양자역학을 설명한다. 이를 통해 우주를 구성하는 물질과 시공간의 구성 원리를 탐구하며, 궁극적으로 빅뱅에서 흘러나온 작디작은 원자가 어떻게 은하, 태양계, 지구를 거쳐 우리가 되는 기적이 어떻게 일어난 것인지를 이야기한다. 이렇게 행성과 은하, 우주라는 아주 큰 것들의 세계와 양자라는 아주 작은 것들의 세계를 자유자재로 오가며 천문학과 양자 역학, 물리학, 화학 등 현대 과학의 다양한 영역을 아우른다. 
이처럼 크리스토프 갈파르만의 재치 넘치는 스토리텔링은 이 책의 흡인력을 극대화한다. 실제로 저자는 스티븐 호킹 부녀와 함께 『조지의 우주를 여는 비밀 열쇠』라는 동화 시리즈를 집필하기도 하고, 자신만의 동화를 출간한 경력도 있다. 그리고 이러한 경험을 십분 살린 이 책만의 실감나는 묘사와 흥미진진한 구성은 “《은하수를 여행하는 히치하이커》의 과학서 버전”이라는 호평을 낳았다. 

“경이롭고, 매력적이고, 쉽다!” 
코페르니쿠스부터 스티븐 호킹까지 
일상의 언어로 풀어쓴 우주와 시간의 역사 
크리스토프 갈파르는 이 책의 시작에서 독자에게 이런 약속을 한다. “이 책에는 단 하나의 공식, E=mc²을 제외하고는 어떠한 공식도 등장하지 않을 것이다.” 그 약속에 걸맞게 이 책은 우주와 시간에 관련된 지식들을 오로지 일상의 언어로 풀어낸다. 가령 샐러드 그릇을 돌아가는 구슬로 우주에서 가장 빠른 물체로 알려진 별 S2의 속도와 중력장을 설명하고, 바닐라 아이스크림으로 핵융합반응을 설명하는 식이다. 
하지만 이 책의 설명이 쉽다고 해서 그 내용이 가벼운 것은 결코 아니다. 코페르니쿠스의 지동설에서부터 중력파까지 아주 오래된 이론에서 최근에야 그 존재가 밝혀진 이론까지 다양한 과학 지식들을 설명한다. 이때 단순히 이론의 변천사를 시간의 흐름에 따라 서술하는 것이 아니라, 주제에 맞춰 그때그때 필요한 이론들을 끌어다 이야기한다. 예컨대 1부 《우주》에서는 태양계와 우리 은하, 그 너머의 우주의 다양한 요소들을 살펴보며 뉴턴의 중력 공식과 플라톤부터 코페르니쿠스, 갈릴레오까지 다양한 우주를 바라보는 시각의 변천사를 소개하며, 2부 《우주 이해하기》와 3부 《빠른 세계》에서는 우리를 둘러싼 세계와 우주가 어떻게 흘러가는지를 탐구하면서 아인슈타인의 일반상대성이론과 특수상대성이론을 다룬다. 한편 4부 《양자 세계로 뛰어들다》와 5부 《시간과 공간의 기원을 향하여》에서는 지금까지 이야기했던 시공간을 구성하는 것들에 대해서 이야기하며 양자 물리학과 관련한 아인슈타인, 폴 디랙, 스티븐 호킹 등의 이론들을 소개한다. 또한 6부 《뜻밖의 미스터리들》과 7부 《우리가 알고 있는 것들의 한 발짝 뒤편》에서는 블랙홀, 우주 인플레이션, 끈 이론 등 지금까지 이야기하지 않았던 우주와 관련한 이슈들을 다양한 학자들의 이론으로 탐구한다. 
이렇게 과학사를 단순히 나열하는 것이 아니라 자연스러운 주제의 흐름에 맞추어 그와 관련된 학자들의 이론을 능숙하게 소개함으로써 이 책은 그동안 우리가 단편적으로만 알고 있었던 과학 이론들이 어떻게 연관이 되고 서로의 주장을 뒷받침하는지를 알려준다. 또한 이렇게 멀고 먼 법칙들을 서로 연결함으로써 인류가 우리 우주와 존재의 본질에 대한 답을 추구해온 과정을 이해할 수 있도록 돕는다. 
우주에 대한 지식들은 대체로 너무나 멀게 느껴진다. 하지만 저자는 이렇게 보이지 않는 것들에 대한 지식을 탐구하는 노력 덕분에 2억 년이나 지구를 지배했지만 끝내 멸종한 공룡과 달리 인류는 미래에 대한 희망을 품을 수 있게 되었다고 이야기하며, 우리가 이 책을 통해 이야기해온 것들이 새로운 세계의 가능성을 열어줄 것이라고 말한다. 『우주, 시간, 그 너머』를 통해 우주의 아름다움과 인간의 상상력의 위대함을 만끽하는 시간을 가질 수 있을 것이다.</p><hr>
						          </br><h2>작가 소개</h2></br>
						         </br><p>.....</p><hr></br>
						         </br> <h2>목차</h2></br>
						          </br><p>서문 

1 우주 
조용한 폭발 | 달 | 태양 | 우리의 우주가족 | 태양 너머 | 우주의 괴물 | 은하수 | 우주 끝의 첫 번째 벽 

2 우주 이해하기 
법과 질서 | 골칫덩이 바위 조각 | 1915년 | 겹겹이 쌓인 과거들 | 팽창 | 중력 느끼기 | 우주론 | 우리의 우주 지평선 너머 | 빅뱅의 결정적 증거 

3 빠른 세계 
준비 | 특이한 꿈 | 우리만의 시간 | 절대 늙지 않는 법 

4 양자 세계로 뛰어들다 
금 덩어리와 자석 | 바다의 물고기처럼 | 원자 속으로 | 거친 전자 세계 | 특이한 감옥 | 마지막 힘 

5 시간과 공간의 기원을 향하여 
자신감을 갖자 | 무無라는 것은 없다 | 반물질 | 벽 너머의 벽 | 어디에나 사라진 과거들이 

6 뜻밖의 미스터리들 
우주 | 양자 무한 | 살았으면서 죽은 | 암흑물질 | 암흑에너지 | 특이점 | 회색은 새로운 검정 

7 우리가 알고 있는 것들의 한 발짝 뒤편 
다시 원점으로 | 다수의 빅뱅 | 경계가 없는 우주 | 전인미답의 영역 | 끈 이론 

에필로그 
감사의 말 
참고 문헌 
색인</p><hr></br>
<p>뉴욕타임스
과학에 전혀 배경 지식이 없는 독자도 『우주, 시간, 그 너머』를 통해 인류가 현대 물리학으로 현실을 파악하게 된 과정을 이해할 수 있을 것이다.
짐 벨(코넬대학교 천문학 교수)
우주와 시간, 현실 그 자체의 본질을 그러잡길 상상이나 할 수 있을까? 다행히도, 크리스토프 갈파르가 그 방법을 알려주었다.
조던 엘렌버그(작가)
흥미진진하고, 박학하고, 장엄하다.
북리스트
크리스토프 갈파르는 현대 물리학을 향한 이번 여행에서, 어떠한 수학 공식도 없이 천체와 원자 탐험의 지적 흥분에 굶주린 독자들을 위한 문을 열어주었다.
퍼블리셔스 위클리
흥미진진하고 이해하기 쉽다. 물리학과 천문학에 대한 지식을 확장시키고 싶은 독자들은 이 책에서 모든 것을 찾을 수 있을 것이다.</p><hr></br>
						          						          
						        </div>
						        <div class="modal-body">       
						        	  <!-- 내용 -->
						        </div>
						        <div class="modal-footer">
						          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						        </div>
						      </div>						      
						    </div>
						  </div>						  
						</div>			
						</div>
					</div>						
					</div>			
					<div class="detail">
						</br></br>						
						<a>인기</a>
						</br></br>	
						<h1>책 제목</h1>
						</br>
						<span>저자</span>
						<p class="text-warning">도서정보 나무의철학 출판|2017년 06월 21일 출간|7.1MB</p>
						<p class="text-warning">지원기기 
						<img src="resources/res/android.jpg" width="20" height="20">
						<img src="resources/res/pc.jpg" width="20" height="20">
						<img src="resources/res/paper.jpg" width="20" height="20">
						</p>
						</br></br>
						<div class="buy"> 
							<h2>구매</h2>
							<div>
								<p >전자책 정가	12,600원	(30%)</br>
									판매가	11,340원	(10%)</p>
							</div>
						</div>						
						<nav>
						  <ul class="pager">
						    <li><a href="#">구매하기</a></li>
						  <li><a href="#"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span></a></li>
						  </ul>
						</nav>
					</div>		
					<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
					  <div class="panel panel-default">
					    <div class="panel-heading" role="tab" id="headingOne">
					      <h4 class="panel-title">
					        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
					       	책소개
					        </a>
					      </h4>
					    </div>
					    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
					      <div class="panel-body">
					        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
					      </div>
					    </div>
					  </div>
					  <div class="panel panel-default">
					    <div class="panel-heading" role="tab" id="headingTwo">
					      <h4 class="panel-title">
					        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
					          저자 소개
					        </a>
					      </h4>
					    </div>
					    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
					      <div class="panel-body">
					        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
					      </div>
					    </div>
					  </div>
					  <div class="panel panel-default">
					    <div class="panel-heading" role="tab" id="headingThree">
					      <h4 class="panel-title">
					        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
					          출한사 서평
					        </a>
					      </h4>
					    </div>
					    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
					      <div class="panel-body">
					        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
					      </div>
					    </div>
					  </div>
					</div>
				</div>	
			</div>
			<div class="footer">
				<c:import url="fragment/footerbar.jsp"></c:import>
			</div>
		</div>		
	</body>
</html>