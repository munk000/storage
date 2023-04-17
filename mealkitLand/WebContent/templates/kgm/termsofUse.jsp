<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>밀키트랜드</title>
<link rel="stylesheet" href="../../static/css/kgm/login.css">
</head>
<body>
	<%@include file="/templates/kgm/header.jsp"%>
	<section id="contents" class="container">

		<form id="join-general-form" name="join-general-form"
			action="/member/join/actionJoinGeneral" method="post"
			onsubmit="return onSubmitJoinGeneral();" accept-charset="UTF-8">
			<input type="hidden" name="_csrf"
				value="43b114cb-4ac0-40e2-baa1-d7604f8c7e33"><input
				type="hidden" id="member-join-general-email-domain-text"
				name="member-join-general-email-domain-text" value=""> <input
				type="hidden" id="member-easy-join" name="member-easy-join"
				value="Y">
			<div class="frame-full terms-section">
				<div class="frame-sm">
					<div class="form-group">
						<div class="form-head">
							<h3 class="">이용약관 동의</h3>
							<p>랭킹닭컴 회원가입을 위해 이용약관을 동의해주세요.</p>
						</div>
						<!--// form-head -->
						<div class="terms-toggle-box">
							<div class="box-head">
								<div class="custom-checkbox" onclick="termsBtn();">
									<input type="checkbox" id="member-join-general-agree-all-check"
										class="checkbox ui-check-all"
										name="member-join-general-agree-all-check"
										onclick="onClickMemberJoinCheckAll();"> <label
										for="member-join-general-agree-all-check"
										style="font-weight: bold;">약관 전체동의</label>
									<p class="notice-text">선택 항목에 대한 동의를 거부하는 경우에도 서비스를 이용하실 수
										있습니다.</p>
								</div>
							</div>
							<!--// box-head -->
							<ul class="terms-inner-list">
								<!-- 회원가입 약관동의 -->
								<li class="ui-toggle-slide">
									<div class="inner-flex">
										<div class="custom-checkbox left-item1" onclick="termsBtn();">
											<input type="checkbox"
												id="member-join-general-agree-terms-check" class="checkbox"
												name="member-join-general-agree-terms-check"
												onclick="onClickMemberJoinCheckItem();"> <label
												for="member-join-general-agree-terms-check"><span
												class="text-guide-sm2">(필수)</span> 회원가입 약관동의</label>
										</div>
										<button type="button" class="btn-box-link1 ui-slide-btn">
											<i class="ico-arr-toggle"></i>
										</button>
									</div> <!--// inner-flex -->
									<div class="terms-inner-box ui-slide-content">
										<!-- 내용 -->
										&nbsp;제1조(목적)<br> 이 약관은 주식회사 (주)푸드나무(이하 “회사”라 한다)가 운영하는
										랭킹닭컴 사이버 몰(이하 "몰"이라 한다)에서 제공하는 인터넷 관련 서비스(이하 "서비스"라 한다)를 이용함에
										있어 사이버 몰과 이용자의 권리·의무 및 책임사항을 규정함을 목적으로 합니다.<br> <br>
										「PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다」<br>
										<br> 제2조(정의)<br> ① "몰" 이란 “회사”가 재화 또는 용역(이하 "재화등"이라
										함)을 이용자에게 제공하기 위하여 컴퓨터등 정보통신설비를 이용하여 재화등을 거래할 수 있도록 설정한 가상의
										영업장을 말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도 사용합니다.<br> ② "이용자"란
										"몰"에 접속하여 이 약관에 따라 "몰"이 제공하는 서비스를 받는 회원 및 비회원을 말합니다.<br>
										③ “회원”이라 함은 "몰"에 개인정보를 제공하여 회원등록을 한 자로서, "몰"의 정보를 지속적으로 제공받으며,
										"몰"이 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다.<br> ④ “비회원”이라 함은
										회원에 가입하지 않고 "몰"이 제공하는 서비스를 이용하는 자를 말합니다.<br> ⑤ "쿠폰"이란
										"몰"의 이용 촉진을 위하여 생일, 기념일, 프로모션 등 “몰”이 정한 기준에 따라 “회원”에게 무료로 지급하는
										“몰” 전용의 사이버 증표를 말합니다.<br> ⑥ “마일리지 포인트”란 “몰”의 이용 촉진을 위하여
										“회원”이 상품 구매 시, “몰”이 정한 기준에 따라 “회원”에게 부여하는 “몰” 전용의 사이버 화폐를
										말합니다.<br> ⑦ “마케팅 포인트”란 “몰”의 이용 촉진을 위하여 “회원”이 상품 구매 후 후기
										적성, 이벤트 참여, 이용 불편 보상에 따라 “회원”에게 부여하는 “몰” 전용의 사이버 화폐를 말합니다.<br>
										⑧ “포인트”란 “몰”이 “회원”에게 지급하는 “마일리지 포인트”와 “마케팅 포인트”를 통칭한 “몰” 전용의
										사이버 화폐를 말합니다.<br> ⑨ "예치금"이란 “회원”이 주문을 취소나 반품, 또는 초과 입금하여
										“회사”가 환불해야 하는 대금 중, 고객의 요청 또는 환불 실행 불가 사유에 따라 “회사”에 임시로 예치해 놓은
										이자가 발생하지 않는 사이버 화폐를 말합니다.<br> <br> 제3조 (약관등의 명시와 설명
										및 개정)&nbsp;<br> ① "몰"은 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지
										주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호·모사전송번호·전자우편주소, 사업자등록번호,
										통신판매업신고번호, 개인정보관리책임자등을 이용자가 쉽게 알 수 있도록 “몰” 초기 서비스화면(전면)에
										게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.<br> ②
										"몰은 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회·배송책임·환불조건 등과 같은
										중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야
										합니다.<br> ③ "몰"은 전자상거래등에서의소비자보호에관한법률, 약관의규제에관한법률, 전자거래기본법,
										전자서명법, 정보통신망이용촉진등에관한법률, 방문판매등에관한법률, 소비자보호법 등 관련법을 위배하지 않는 범위에서
										이 약관을 개정할 수 있습니다.<br> ④ "몰"이 약관을 개정할 경우에는 적용일자 및 개정사유를
										명시하여 현행약관과 함께 몰의 초기화면에 그 적용일자 7일이전부터 적용일자 전일까지 공지합니다. 다만,
										이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우
										"몰"은 개정전 내용과 개정후 내용을 명확하게 비교하여 이용자가 알기 쉽도록 표시합니다.&nbsp;<br>
										⑤ "몰"이 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미
										체결된 계약에 대해서는 개정전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의
										적용을 받기를 원하는 뜻을 제3항에 의한 개정약관의 공지기간내에 '몰"에 송신하여 "몰"의 동의를 받은 경우에는
										개정약관 조항이 적용됩니다.<br> ⑥ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는
										전자상거래등에서의소비자보호에관한법률, 약관의규제등에관한법률, 공정거래위원회가 정하는
										전자상거래등에서의소비자보호지침 및 관계법령 또는 상관례에 따릅니다.<br> <br>
										제4조(서비스의 제공 및 변경)<br> ① "몰"은 다음과 같은 업무를 수행합니다.<br>
										1. 재화 또는 용역에 대한 정보 제공 및 구매계약의 체결<br> 2. 구매계약이 체결된 재화 또는
										용역의 배송<br> 3. 기타 "몰"이 정하는 업무<br> ② "몰"은 재화 또는 용역의 품절
										또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할 재화 또는 용역의 내용을 변경할 수
										있습니다. 이 경우에는 변경된 재화 또는 용역의 내용 및 제공일자를 명시하여 현재의 재화 또는 용역의 내용을
										게시한 곳에 즉시 공지합니다.<br> ③ "몰"이 제공하기로 이용자와 계약을 체결한 서비스의 내용을
										재화등의 품절 또는 기술적 사양의 변경 등의 사유로 변경할 경우에는 그 사유를 이용자에게 통지 가능한 수단을
										이용해 통지합니다.<br> ④ 전항의 경우 "몰"은 이로 인하여 이용자가 입은 손해를 배상합니다.
										다만, "몰"이 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.<br> <br>
										제5조(서비스의 중단)&nbsp;<br> ① "몰"은 컴퓨터 등 정보통신설비의 보수점검·교체 및 고장,
										통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다.<br> ②
										"몰"은 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여
										배상합니다. 단, "몰"이 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.<br> ③
										“회사”는 서비스의 원활한 수행을 위하여 필요한 기간을 정하여 사전에 공지하고 서비스를 중지할 수 있습니다.
										단, 불가피하게 긴급한 조치를 필요로 하는 경우 사후에 공지할 수 있습니다.<br> ④ 사업종목의
										전환, 사업의 포기, 업체간의 통합 등의 이유로 서비스를 제공할 수 없게 되는 경우에는 "몰"은 제8조에 정한
										방법으로 이용자에게 통지하고 당초 "몰"에서 제시한 조건에 따라 소비자에게 보상합니다. 다만, "몰"이 보상기준
										등을 고지하지 아니한 경우에는 이용자들의 ”마일리지 포인트” 또는 “예치금” 등을 "몰"에서 통용되는 통화가치에
										상응하는 현물 또는 현금으로 이용자에게 지급합니다.<br> <br>
										제6조(회원가입)&nbsp;<br> ① 이용자는 "몰"이 정한 가입 양식에 따라 회원정보를 기입한 후
										이 약관에 동의한다는 의사표시를 함으로서 회원가입을 신청합니다.<br> ② "몰"은 제1항과 같이
										회원으로 가입할 것을 신청한 이용자 중 다음 각호에 해당하지 않는 한 회원으로 등록합니다.<br> 1.
										가입신청자가 이 약관 제7조제3항에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 다만 제7조제3항에 의한
										회원자격 상실후 3년이 경과한 자로서 "몰"의 회원재가입 승낙을 얻은 경우에는 예외로 한다.<br>
										2. 타인의 명의를 도용하거나, 등록 내용에 허위, 기재누락, 오기가 있는 경우<br> 3. 기타
										회원으로 등록하는 것이 "몰"의 기술상 현저히 지장이 있다고 판단되는 경우<br> 4. 만14세 미만의
										아동이 법정대리인(부모 등)의 동의를 얻지 아니한 이용신청을 하는 경우<br> ③ 회원가입계약의
										성립시기는 "몰"의 승낙이 회원에게 도달한 시점으로 합니다.<br> ④ 회원은 제1항에 의한 등록사항에
										변경이 있는 경우, 즉시 "몰"에서 온라인으로 개인정보를 수정하거나 전자우편 또는 기타 방법으로 "회사"에 그
										변경 사항을 알려야 합니다. 이를 알리지 않아 발생하는 불이익에 대한 책임은 "회원"에게 있습니다.<br>
										<br> 제7조(회원 탈퇴 및 자격 상실 등)&nbsp;<br> ① 회원은 "몰"에 언제든지
										탈퇴를 요청할 수 있으며 "몰"은 즉시 회원탈퇴를 처리합니다.<br> ② 회원이 다음 각호의 사유에
										해당하는 경우, "몰"은 회원자격을 제한 및 정지시킬 수 있습니다.<br> 1. 가입 신청시에 허위
										내용을 등록한 경우<br> 2. "몰"을 이용하여 구입한 재화등의 대금, 기타 "몰"이용에 관련하여
										회원이 부담하는 채무를 기일에 지급하지 않는 경우<br> 3. 다른 사람의 "몰" 이용을 방해하거나 그
										정보를 도용하는 등 전자상거래 질서를 위협하는 경우<br> 4. "몰"을 이용하여 법령 또는 이 약관이
										금지하거나 공서양속에 반하는 행위를 하는 경우<br> ③ "몰"이 회원 자격을 제한·정지 시킨후,
										동일한 행위가 2회이상 반복되거나 30일이내에 그 사유가 시정되지 아니하는 경우 "몰"은 회원자격을 상실시킬 수
										있습니다.<br> ④ "몰"이 회원자격을 상실시키는 경우에는 회원등록을 말소합니다. 이 경우 회원에게
										이를 통지하고, 회원등록 말소전에 최소한 30일 이상의 기간을 정하여 소명할 기회를 부여합니다.<br>
										<br> 제8조(회원에 대한 통지)<br> ① "몰"이 회원에 대한 통지를 하는 경우, 회원이
										"몰"과 미리 약정하여 지정한 전자우편 주소로 할 수 있습니다.<br> ② "몰"은 불특정다수 회원에
										대한 통지의 경우 1주일이상 "몰" 게시판에 게시함으로서 개별 통지에 갈음할 수 있습니다. 다만, 회원 본인의
										거래와 관련하여 중대한 영향을 미치는 사항에 대하여는 개별통지를 합니다.<br> ③ “몰”은 당사에서
										정한 절차에 의거하여 12개월 이상 미로그인한 고객에 대하여 쿠폰 발급 후 사용가능 기간 30일, 1만원
										할인쿠폰이 휴대폰으로 발송됩니다. (단, 당사에서 정한 모바일 상품권 금액 및 미 로그인기간 기준은 변경 될 수
										있습니다.)<br> <br> <br> 제9조(구매신청)<br> "몰"이용자는
										"몰"상에서 다음 또는 이와 유사한 방법에 의하여 구매를 신청하며, "몰"은 이용자가 구매신청을 함에 있어서
										다음의 각 내용을 알기 쉽게 제공하여야 합니다. &nbsp;단, 회원인 경우 제2호 내지 제4호의 적용을 제외할
										수 있습니다.<br> 1. 재화등의 검색 및 선택<br> 2. 성명, 주소, 전화번호,
										전자우편주소(또는 이동전화번호) 등의 입력<br> 3. 약관내용, 청약철회권이 제한되는 서비스,
										배송료·설치비 등의 비용부담과 관련한 내용에 대한 확인<br> 4. 이 약관에 동의하고 위 3.호의
										사항을 확인하거나 거부하는 표시(예, 마우스 클릭)<br> 5. 재화등의 구매신청 및 이에 관한 확인
										또는 "몰"의 확인에 대한 동의<br> 6. 결제방법의 선택<br> <br> 제10조
										(계약의 성립)<br> ① "몰"은 제9조와 같은 구매신청에 대하여 다음 각호에 해당하면 승낙하지 않을
										수 있습니다. 다만, 미성년자와 계약을 체결하는 경우에는 법정대리인의 동의를 얻지 못하면 미성년자 본인 또는
										법정대리인이 계약을 취소할 수 있다는 내용을 고지하여야 합니다.<br> 1. 신청 내용에 허위,
										기재누락, 오기가 있는 경우<br> 2. 미성년자가 담배, 주류등 청소년보호법에서 금지하는 재화 및
										용역을 구매하는 경우<br> 3. 기타 구매신청에 승낙하는 것이 "몰" 기술상 현저히 지장이 있다고
										판단하는 경우<br> ② "몰"의 승낙이 제15조제1항의 수신확인통지형태로 이용자에게 도달한 시점에
										계약이 성립한 것으로 봅니다.<br> ③ "몰"의 승낙의 의사표시에는 이용자의 구매 신청에 대한 확인
										및 판매가능 여부, 구매신청의 정정 취소등에 관한 정보등을 포함하여야 합니다.<br> <br>
										제11조(지급방법)<br> "몰"에서 구매한 재화 또는 용역에 대한 대금지급방법은 다음 각호의 방법중
										가용한 방법으로 할 수 있습니다. 단, "몰"은 이용자의 지급방법에 대하여 재화 등의 대금에 어떠한 명목의
										수수료도 추가하여 징수할 수 없습니다.<br> 1. 폰뱅킹, 인터넷뱅킹, 메일 뱅킹 등의 각종
										계좌이체&nbsp;<br> 2. 선불카드, 직불카드, 신용카드 등의 각종 카드 결제<br>
										3. 온라인무통장입금<br> 4. 전자화폐에 의한 결제<br> 5. 수령시 대금지급<br>
										6. “예치금” 또는 "몰"이 지급한 “포인트”에 의한 결제<br> 7. "몰"과 계약을 맺었거나
										"몰"이 인정한 상품권에 의한 결제&nbsp;<br> 8. 기타 전자적 지급 방법에 의한 대금 지급 등<br>
										<br> 제12조 (쿠폰 제도)<br> ① “쿠폰” 지급의 기준 및 사용 혜택은 “회사”의
										정책상 변경될 수 있으며, 변경된 내용은 "몰"을 통해 고지함으로써 그 효력이 발생합니다.<br> ②
										“쿠폰”은 쿠폰에 명시된 사용 조건(특정 상품, 특정 카테고리, 특정 입점사 상품 구매) 및 범위(PC,
										MOBILE, APP, 오프라인 구매)에 모두 부합할 경우에만 결제 금액 할인 또는 배송비 면제 수단으로
										사용하실 수 있습니다. 단, 일부 특가 할인 및 포인트 사용 등 타 할인과 동시 사용이 불가할 수 있습니다.<br>
										③ “쿠폰”은 쿠폰에 명시된 유효기간 동안 사용할 수 있으며, 유효기간 만료 시 사용 또는 재발행 되지
										않습니다.<br> ④ “쿠폰”은 “몰”에서의 구매 및 이용 촉진을 위해 무료로 지급해 드리는 “몰”
										전용의 사이버 증서이므로, 현금으로 반환되지 않습니다.<br> ⑤ “쿠폰”은 타인에게 양도가 불가하며,
										동일한 회원이 여러 개의 아이디(ID)를 보유하더라도 이전, 전달할 수 없습니다.<br> ⑥ "회사"는
										"회원"이 "회사"가 승인하지 않은 방법 또는 허위 정보 제공, 본 약관에 위배되는 등의 부정한 방법으로
										"쿠폰"을 획득하거나 부정한 목적이나 용도로 "쿠폰"을 사용하는 경우 "쿠폰"의 사용을 제한 또는 “회사”가
										정한 방법으로 회수할 수 있으며, "쿠폰"을 사용한 구매 신청을 취소하거나 "회원" 자격을 정지할 수 있습니다.<br>
										⑦ “회원” 탈퇴 시, 미사용 “쿠폰”은 자동 소멸되며, “회사”는 미사용 “쿠폰”에 대해 별도 보상하지
										않습니다. 탈퇴 후, 재가입 하더라도 소멸된 “쿠폰”은 복구되지 아니합니다.<br> <br>
										제13조 (포인트 제도)<br> ① “몰”은 “회원”이 “몰” 내에서 상품 구매 시, 회원 등급에 따라
										구매 금액의 일정 비율을 “마일리지 포인트”를 부여할 수 있습니다.<br> ② “마일리지 포인트”는
										지급 후 1년간 유효하며, 유효기간 내 미사용 포인트는 자동 소멸됩니다.<br> ③ “몰”은 “몰”
										내에서 상품 후기 작성, 이벤트 참여 등 “회원” 참여 활동에 따라 “마케팅 포인트”를 부여할 수 있습니다.<br>
										④ “마케팅 포인트”의 지급 기준 및 지급률, 유효기간은 “몰”의 운영 정책에 따라 변경될 수 있으며, “몰”
										내 고지함으로써 그 효력이 발생합니다.<br> ⑤ “회원”은 “포인트”를 ”몰”이 정한 기준 이상
										보유한 경우 “몰”에서 상품 구매 시, 결제 할인 수단으로 사용하실 수 있습니다. 단, 일부 특가 할인 및 쿠폰
										할인 등 타 할인과 동시 사용이 불가할 수 있습니다.<br> ⑥ “포인트”는 “몰”이 고지한 유효기간
										내에 사용할 수 있으며, 유효기간 내 미사용 포인트는 자동으로 소멸됩니다.<br> ⑦ “포인트”는
										유효기간이 먼저 도래하는 순서로 사용됩니다. 단, 2019년 2월 18일까지 부여된 “포인트”는 유효기간이
										없으며, “포인트”사용 시, 우선 차감됩니다.<br> ⑧ “포인트”는 “몰”에서의 구매 및 이용 촉진을
										위해 무료로 지급해 드리는 “몰” 전용의 사이버 화폐이므로, 현금으로 반환되지 않습니다.<br> ⑨
										“포인트”은 타인에게 양도가 불가하며, 동일한 회원이 여러 개의 아이디(ID)를 보유하더라도 합산할 수
										없습니다.&nbsp;<br> ⑩ "포인트"는 "회원"이 "회사"가 승인하지 않은 방법 또는 허위 정보
										제공, 본 약관에 위배되는 등의 부정한 방법으로 "포인트"를 획득하거나 부정한 목적이나 용도로 "포인트"를
										사용하는 경우 "포인트"의 사용을 제한 또는 “회사”가 정한 방법으로 회수할 수 있으며, "포인트"를 사용한
										구매신청을 취소하거나 "회원" 자격을 정지할 수 있습니다.<br> ⑪ “회원” 탈퇴 시, 미사용
										“포인트”는 자동 소멸되며, “회사”는 미사용 “포인트”에 대해 별도 보상하지 않습니다. 탈퇴 후, 재가입
										하더라도 소멸된 “포인트”는 복구되지 아니합니다.<br> <br> 제14조 (예치금 제도)<br>
										① “회사”는 “고객”이 환불 금액을 “예치금”으로 예치를 신청하거나, 환불 실행이 불가한 상황일 경우
										“예치금”으로 예치할 수 있습니다.<br> ② “예치금”을 보유한 “회원”은 “몰”에서 상품 구매 시,
										결제 수단으로 사용할 수 있습니다.<br> ③ “예치금”은 “회원”의 요청에 따라 “예치금”의 일부
										또는 전부를 고객(은행) 계좌로 출금하실 수 있습니다.<br> ④ “회사”는 “예치금”을 고객(은행)
										계좌로 출금할 경우 이체 수수료를 공제 후 출금할 수 있습니다.<br> ⑤ “예치금”은 타인에게 양도가
										불가하며, 동일한 회원이 여러 개의 아이디(ID)를 보유하더라도 합산할 수 없습니다.<br> ⑥
										"회사"는 "회원"이 "회사"가 승인하지 않은 방법 또는, 본 약관에 위배되는 등의 부정한 방법으로 "예치금"을
										획득하거나 부정한 목적이나 용도로 "예치금"을 사용하는 경우 "예치금"의 사용을 제한 또는 “회사”가 정한
										방법으로 회수할 수 있으며, "예치금"을 사용한 구매 신청을 취소하거나 "회원" 자격을 정지할 수 있습니다.<br>
										<br> 제15조(수신확인통지·구매신청 변경 및 취소)<br> ① "몰"은 이용자의 구매신청이
										있는 경우 이용자에게 수신확인통지를 합니다.<br> ② 수신확인통지를 받은 이용자는 의사표시의
										불일치등이 있는 경우에는 수신확인통지를 받은 후 즉시 구매신청 변경 및 취소를 요청할 수 있고 "몰"은 발송전에
										이용자의 요청이 있는 경우에는 지체없이 그 요청에 따라 처리하여야 합니다. 다만 이미 대금을 지불한 경우에는
										제18조의 청약철회 등에 관한 규정에 따릅니다.<br> <br> 제16조(재화등의 공급)<br>
										① "몰"은 이용자와 재화등의 공급시기에 관하여 별도의 약정이 없는 이상, 이용자가 청약을 한 날부터 7일
										이내에 재화 등을 배송할 수 있도록 주문제작, 포장 등 기타의 필요한 조치를 취합니다. 다만, "몰"이 이미
										재화 등의 대금의 전부 또는 일부를 받은 경우에는 대금의 전부 또는 일부를 받은 날부터 3영업일 이내에 조치를
										취합니다. &nbsp;이때 "몰"은 이용자가 재화등의 공급 절차 및 진행 사항을 확인할 수 있도록 적절한 조치를
										합니다.<br> ② "몰"은 이용자가 구매한 재화에 대해 배송수단, 수단별 배송비용 부담자, 수단별
										배송기간 등을 명시합니다.&nbsp;<br> <br> 제17조(환급)<br> "몰"은
										이용자가 구매신청한 재화등이 품절 등의 사유로 인도 또는 제공을 할 수 없을 때에는 지체없이 그 사유를
										이용자에게 통지하고 사전에 재화 등의 대금을 받은 경우에는 대금을 받은 날부터 3영업일 이내에 환급하거나 환급에
										필요한 조치를 취합니다.<br> <br> 제18조(청약철회 등)<br> ① "몰"과
										재화등의 구매에 관한 계약을 체결한 이용자는 수신확인의 통지를 받은 날부터 7일 이내에는 청약의 철회를 할 수
										있습니다.<br> ② 이용자는 재화등을 배송받은 경우 다음 각 호에 해당하는 경우에는 반품 및 교환을
										할 수 없습니다.<br> 1. 이용자에게 책임 있는 사유로 재화 등이 멸실 또는 훼손된 경우<br>
										2. 이용자의 사용 또는 일부 소비에 의하여 재화 등의 가치가 현저히 감소한 경우<br> 3. 시간의
										경과에 의하여 재판매가 곤란할 정도로 재화등의 가치가 현저히 감소한 경우<br> 4. 같은 성능을 지닌
										재화등으로 복제가 가능한 경우 그 원본인 재화 등의 포장을 훼손한 경우<br> ③ 제2항제2호 내지
										제4호의 경우에 "몰"이 사전에 청약철회 등이 제한되는 사실을 소비자가 쉽게 알 수 있는 곳에 명기하거나
										시용상품을 제공하는 등의 조치를 하지 않았다면 이용자의 청약철회등이 제한되지 않습니다.<br> ④
										이용자는 제1항 및 제2항의 규정에 불구하고 재화등의 내용이 표시 광고 내용과 다르거나 계약내용과 다르게 이행된
										때에는 당해 재화등을 공급받은 날부터 3월이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에
										청약철회 등을 할 수 있습니다.<br> ⑤ “몰”은 개별 상품의 성격에 따라 별도의 계약 및 청약철회
										관련 규정을 정할 수 있으며, 개별 상품의 상세정보 페이지에 명기 하거나 별도 계약을 체결함으로써 효력이
										발생합니다. 청약 철회 사유 발생 시, 개별 상품의 계약 및 청약철회 관련 규정이 우선 적용됩니다.<br>
										<br> 제19조(청약철회 등의 효과)<br> ① "몰"은 이용자로부터 재화 등을 반환받은
										경우 3영업일 이내에 이미 지급받은 재화등의 대금을 환급합니다. 이 경우 "몰"이 이용자에게 재화등의 환급을
										지연한 때에는 그 지연기간에 대하여 공정거래위원회가 정하여 고시하는 지연이자율을 곱하여 산정한 지연이자를
										지급합니다.<br> ② "몰"은 위 대금을 환급함에 있어서 이용자가 신용카드 또는 전자화폐 등의
										결제수단으로 재화등의 대금을 지급한 때에는 지체없이 당해 결제수단을 제공한 사업자로 하여금 재화등의 대금의
										청구를 정지 또는 취소하도록 요청합니다.&nbsp;<br> ③ 청약철회등의 경우 공급받은 재화등의
										반환에 필요한 비용은 이용자가 부담합니다. "몰"은 이용자에게 청약철회등을 이유로 위약금 또는 손해배상을
										청구하지 않습니다. 다만 재화등의 내용이 표시 광고 내용과 다르거나 계약내용과 다르게 이행되어 청약철회등을 하는
										경우 재화등의 반환에 필요한 비용은 "몰"이 부담합니다.<br> ④ 이용자가 재화등을 제공받을때
										발송비를 부담한 경우에 "몰"은 청약철회시 그 비용을 누가 부담하는지를 이용자가 알기 쉽도록 명확하게
										표시합니다.<br> <br> 제20조(개인정보보호)<br> ① "몰"은 이용자의
										정보수집시 구매계약 이행에 필요한 최소한의 정보를 수집합니다.<br> ② "회사"는 회원가입 시
										구매계약이행에 필요한 정보를 미리 수집하지 않습니다. 다만, 관련 법령상 의무이행을 위하여 구매계약 이전에
										본인확인이 필요한 경우로서 최소한의 특정 개인정보를 수집하는 경우에는 그러하지 아니합니다.<br> ③
										"몰"이 이용자의 개인식별이 가능한 개인정보를 수집하는 때에는 반드시 당해 이용자의 동의를 받습니다.<br>
										④ 제공된 개인정보는 당해 이용자의 동의없이 목적외의 이용이나 제3자에게 제공할 수 없으며, 이에 대한 모든
										책임은 “몰”이 집니다. 다만, 다음의 경우에는 예외로 합니다.<br> 1. 배송업무상 배송업체에게
										배송에 필요한 최소한의 이용자의 정보(성명, 주소, 전화번호)를 알려주는 경우<br> 2. 통계작성,
										학술연구 또는 시장조사를 위하여 필요한 경우로서 특정 개인을 식별할 수 없는 형태로 제공하는 경우<br>
										3. 재화등의 거래에 따른 대금정산을 위하여 필요한 경우<br> 4. 도용방지를 위하여 본인확인에
										필요한 경우<br> 5. 법률의 규정 또는 법률에 의하여 필요한 불가피한 사유가 있는 경우<br>
										6. 수사기관이나 기타 정부기관으로부터 정보제공을 요청받은 경우<br> ⑤ "몰"이 제3항과 제4항에
										의해 이용자의 동의를 받아야 하는 경우에는 개인정보관리 책임자의 신원(소속, 성명 및 전화번호, 기타 연락처),
										정보의 수집목적 및 이용목적, 제3자에 대한 정보제공 관련사항(제공받은자, 제공목적 및 제공할 정보의 내용) 등
										정보통신망이용촉진등에관한법률 제22조제2항이 규정한 사항을 미리 명시하거나 고지해야 하며 이용자는 언제든지 이
										동의를 철회할 수 있습니다.<br> ⑥ 이용자는 언제든지 "몰"이 가지고 있는 자신의 개인정보에 대해
										열람 및 오류정정을 요구할 수 있으며 "몰"은 이에 대해 지체없이 필요한 조치를 취할 의무를 집니다. 이용자가
										오류의 정정을 요구한 경우에는 "몰"은 그 오류를 정정할 때까지 당해 개인정보를 이용하지 않습니다.<br>
										⑦ "몰"은 개인정보 보호를 위하여 관리자를 한정하여 그 수를 최소화하며 신용카드, 은행계좌 등을 포함한
										이용자의 개인정보의 분실, 도난, 유출, 변조 등으로 인한 이용자의 손해에 대하여 모든 책임을 집니다.<br>
										⑧ “몰”은 “이용자”의 개인정보를 제3자에게 제공할 필요가 있는 경우 제공되는 개인정보 항목, 제공받는 자,
										이용목적 및 보유·이용기간을 명시하여 “이용자”의 동의를 받고, “몰”로부터 개인정보를 제공받은 제3자는
										개인정보의 수집목적 또는 제공받은 목적을 달성하였거나, 보유·이용기간이 만료된 때에는 당해 개인정보를 지체없이
										파기합니다.<br> <br> 제21조("몰"의 의무)<br> ① "몰"은 법령과 이
										약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 이 약관이 정하는 바에 따라 지속적이고, 안정적으로
										재화·용역을 제공하는데 최선을 다하여야 합니다.<br> ② "몰"은 이용자가 안전하게 인터넷 서비스를
										이용할 수 있도록 이용자의 개인정보(신용정보 포함)보호를 위한 보안 시스템을 갖추어야 합니다.<br>
										③ "몰"이 상품이나 용역에 대하여 「표시·광고의공정화에관한법률」 제3조 소정의 부당한 표시·광고행위를 함으로써
										이용자가 손해를 입은 때에는 이를 배상할 책임을 집니다.<br> ④ "몰"은 이용자가 원하지 않는
										영리목적의 광고성 전자우편을 발송하지 않습니다.<br> <br> 제22조(회원의 ID 및
										비밀번호에 대한 의무)<br> ① ID와 비밀번호에 관한 관리책임은 “회원”에게 있으며, 이를 소홀히
										하여 발생한 모든 민형사상의 책임은 “회원” 자신에게 있습니다.<br> ② 회원은 자신의 ID 및
										비밀번호를 제3자에게 이용하게 해서는 안됩니다.<br> ③ 회원이 자신의 ID 및 비밀번호의 유출 또는
										제3자 사용에 대해 인지하고도 비밀번호를 변경하지 않은 경우 또는 이와 같은 사정을 회사에 통지하지 않거나
										회사의 조치에 응하지 않은 경우 등 회원이 본 조의 의무를 준수하지 않아 발생하는 모든 손실이나 손해 등
										불이익에 대한 책임은 회원에게 있습니다.<br> <br> 제23조(이용자의 의무)<br>
										① 이용자는 다음 행위를 하여서는 안됩니다.<br> 1. 신청 또는 변경시 허위 내용의 등록<br>
										2. 타인의 정보 도용<br> 3. "몰"에 게시된 정보의 변경<br> 4. "몰"이 정한
										정보 이외의 정보(컴퓨터 프로그램 등) 등의 송신 또는 게시<br> 5. "몰" 기타 제3자의 저작권
										등 지적재산권에 대한 침해<br> 6. "몰" 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위<br>
										7. 외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를 몰에 공개 또는 게시하는 행위<br>
										8. “몰”을 이용하여 구입한 재화 등의 대금, 기타 “몰” 이용에 관련하여 “회원”이 부담하는 채무의 미이행<br>
										9. 상품 등의 구매를 가장하여 재판매 등의 방법으로 자금을 융통하는 것과 같이 비정상적인 결제를 하는 행위<br>
										10. 진정한 구매 의사없이 "쿠폰" 등을 적용하여 상품구매 후 재판매하기 위한 목적으로 서비스를 이용하는 행위<br>
										11. 오프라인이나 다른 사이트에서 발생한 구매에 대해 "포인트" 등을 부당하게 확보할 목적으로 서비스를
										이용하는 행위<br> 12. “회사”의 허락 없이 서비스를 이용하여 영업/광고 활동 등을 하거나,
										“회사”가 허락한 내용과 범위를 벗어난 영업/광고 활동 행위<br> 13. 타인의 신용카드, 은행
										계좌, 휴대폰 등을 무단으로 이용 또는 도용하여 상품 등을 구매하는 행위<br> 14. “회사” 또는
										타인의 명예를 손상시키거나 확인되지 않은 사실을 유포하는 행위 타인의 권리를 침해하는 행위 및 회사의 업무수행에
										현저한 지장을 초래하는 행위<br> ② "회사"는 제1항을 위반한 "회원"에 대하여 계약 해제,
										"포인트" 또는 "쿠폰"의 환수, "회원" 자격의 제한, 현금 환불 보류 등의 조치 및 민∙형사 상의 법적 조치
										등을 취할 수 있습니다.<br> ③ “회원”은 이 약관에서 규정하는 사항 및 “몰” 상의 공지사항 등
										“회사”가 정한 제반 정책이나 규정을 수시로 확인하여야 합니다.<br> <br> 제24조
										(게시물의 관리)<br> ① "회원"이 작성한 게시물에 대한 모든 권리와 책임은 이를 게시한
										"회원"에게 있으며, "회사"는 "회원"이 작성한 게시물이 다음 각 호에 해당하는 경우 "회사"의 정책에 따라
										사전 통지 없이 해당 게시물의 열람을 제한하거나, 이동 또는 삭제 등의 조치를 취할 수 있습니다.&nbsp;<br>
										1. 타인을 모욕, 비방, 비하하거나 타인의 명예를 훼손하는 게시물<br> 2. 범죄 및 불법 행위에
										악용될 수 있는 정보를 담고 있는 게시물<br> 3. “회사” 또는 제3자의 저작권 등 기타
										지적재산권을 포함한 일체의 권리를 침해하는 내용인 경우<br> 4. 음란물 또는 일반인의 성적
										굴욕감이나 수치심을 유발할 수 있는 내용의 게시물(그러한 내용이 담긴 웹사이트, 앱 등으로 연결될 수 있는
										게시물을 포함)<br> 5. 어린이와 청소년의 정신적, 신체적 건강을 해칠 우려가 있는 선정적인 내용을
										담은 게시물<br> 6. 특정인의 개인정보가 노출된 게시물<br> 7. 특정 상품 등을
										소개하여 판매하거나, 이를 구매, 사용하도록 권하거나 연락을 유도하는 등 직간접적으로 영리추구를 위한 내용을
										담고 있는 게시물<br> 8. "몰"의 이용 목적에 부합하지 않거나 해당 서비스의 취지와 무관한 내용의
										게시물<br> 9. 악성코드나 스파이웨어 등이 실행되어 다른 회원, 회사, 판매자 기타 제3자의 시스템
										성능 저하, 개인정보 유출 등의 피해를 줄 수 있는 악의적인 코드를 담고 있는 게시물<br> 10.
										허위의 사실을 마치 진실인 것처럼 기재하여 "회사"의 업무를 방해하거나 "회사"의 사실관계 확인 요청에 2회
										이상 불응한 경우<br> 11. "회사"가 제공하는 "서비스" 기타 영업행위의 원활한 진행을 방해하는
										것으로 판단되는 경우<br> 12. 기타 이 약관 또는 법령에 위배되거나 공서양속에 반하는 내용의
										게시물<br> ② 게시물로 인하여 법률상 이익이 침해된 자는 관련 법령과 고객센터에서 정한 절차에 따라
										당해 게시물의 게시중단 및 삭제 등을 요청할 수 있으며, “회사”는 관련 법령에 따라 필요한 조치를 취하여야
										합니다.&nbsp;<br> ③ "회원"이 작성한 "게시물"의 저작권은 이를 작성한 "회원" 본인에게
										있으며, 해당 게시물이 타인의 저작권을 침해하는 경우 그에 대한 책임은 "회원" 본인이 부담합니다.<br>
										④ "회원"은 "회사"에게 자신이 작성한 게시물을 독점적으로 이용할 수 있는 권리(license)를 부여합니다.
										이에 따라 "회사"는 "회원"이 작성한 "게시물"을 검색노출, 판촉, 홍보 기타의 자료로 무상으로 영구적으로
										이용할 수 있으며, 필요한 범위 내에서 "게시물"의 일부를 수정, 복제, 편집할 수 있습니다.<br>
										⑤ "회원" 탈퇴 이후에는 회원 정보가 삭제되어 작성자 본인을 확인할 수 없으므로 "회원"이 탈퇴이전에 작성한
										게시물의 편집이나 삭제가 불가하며, "회원"은 본인이 작성한 게시물의 삭제 또는 게시 중단 등을 원할 경우
										"회원" 탈퇴이전에 본인이 작성한 게시물에 대해 삭제 등 조치를 취하여야 합니다.<br> <br>
										제25조(연결"몰"과 피연결"몰" 간의 관계)<br> ① 상위 "몰"과 하위 "몰"이 하이퍼 링크(예:
										하이퍼 링크의 대상에는 문자, 그림 및 동화상 등이 포함됨)방식 등으로 연결된 경우, 전자를 연결 "몰"(웹
										사이트)이라고 하고 후자를 피연결 "몰"(웹사이트)이라고 합니다.<br> ② 연결"몰"은 피연결"몰"이
										독자적으로 제공하는 재화등에 의하여 이용자와 행하는 거래에 대해서 보증책임을 지지 않는다는 뜻을 연결"몰"의
										초기화면 또는 연결되는 시점의 팝업화면으로 명시한 경우에는 그 거래에 대한 보증책임을 지지 않습니다.<br>
										<br> 제26조(저작권의 귀속 및 이용제한)<br> ① "몰"이 작성한 저작물에 대한 저작권
										기타 지적재산권은 "몰"에 귀속합니다.<br> ② 이용자는 "몰"을 이용함으로써 얻은 정보 중
										"몰"에게 지적재산권이 귀속된 정보를 "몰"의 사전 승낙없이 복제, 송신, 출판, 배포, 방송 기타 방법에
										의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안됩니다.<br> <br>
										제27조(분쟁해결)<br> ① "몰"은 이용자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해를
										보상처리하기 위하여 피해보상처리기구를 설치·운영합니다.<br> ② "몰"은 이용자로부터 제출되는
										불만사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만, 신속한 처리가 곤란한 경우에는 이용자에게 그 사유와
										처리일정을 즉시 통보해 드립니다.<br> ③ "몰"과 이용자간에 발생한 전자상거래 분쟁과 관련하여
										이용자의 피해구제신청이 있는 경우에는 공정거래위원회 또는 시 도지사가 의뢰하는 분쟁조정기관의 조정에 따를 수
										있습니다.<br> <br> 제28조(재판권 및 준거법)<br> ① "몰"과 이용자간에
										발생한 전자상거래 분쟁에 관한 소송은 제소 당시의 이용자의 주소에 의하고, 주소가 없는 경우에는 거소를 관할하는
										지방법원의 전속관할로 합니다. 다만, 제소 당시 이용자의 주소 또는 거소가 분명하지 않거나 외국 거주자의
										경우에는 민사소송법상의 관할법원에 제기합니다.<br> ② "몰"과 이용자간에 제기된 전자상거래 소송에는
										한국법을 적용합니다.<br> <br> [정기배송 이용동의]<br> <br>
										제1조. 정기배송 서비스란?<br> 정기배송 서비스는 고객의 편의를 위하여 상품을 정기적으로 배송하는
										서비스입니다.<br> <br> 제2조. 정기배송 서비스 이용 자격<br> 정기배송
										서비스는 주식회사 (주)푸드나무(이하 “회사”라 한다) 회원이면 누구나 정기배송 서비스를 신청함으로써 이용이
										가능합니다.<br> <br> 제3조. 정기배송 서비스 상품의 결제 등<br> ①
										회사는 정기배송 서비스 상품에 대하여 할인 혜택을 제공할 수 있으며, 할인율 및 거래조건 등은 상품 별로 다를
										수 있고 변경될 수 있습니다.&nbsp;<br> ② 정기배송 서비스의 특성 상 상품의 가격은 계속적으로
										변경될 수 있으며, 고객에게 고지된 시점의 상품 가격을 기준으로 결제가 이루어집니다. 가격 결정의 기준 시점은
										변경될 수 있습니다.&nbsp;<br> ③ 정기배송 서비스 상품의 추가 또는 변경 시 결제되는 총
										상품의 금액은 변경됩니다.<br> ④ 정기배송 구매시 적립 포인트 및 증정 상품은 고객 등급의 변동 및
										사은품의 변경 등으로 회차별 자동결제 시점에 따라 변동될 수 있습니다.<br> ⑤ 카드 한도 초과
										등으로 상품의 결제가 이루어 지지 않을 경우, 해당 회차의 정기배송은 이루어지지 않을 수 있으며, 위와 같은
										상황이 2회 이상 지속되는 경우 회사는 정기배송 서비스를 중지할 수 있습니다.<br> <br>
										제4조. 정기배송 서비스 상품의 판매 종료 등<br> 정기배송 대상 상품을 더 이상 판매할 수 없거나
										해당 상품을 정기배송 서비스로 제공할 수 없는 사유가 있는 경우, 회사는 해당 상품의 정기배송 서비스를
										중지하거나 해당 회차의 상품을 공급하지 않을 수 있습니다.<br> <br> 제5조. 정기배송
										서비스의 종료<br> 고객은 회사에게 통지함으로써 정기배송 서비스를 종료시킬 수 있습니다. 단,
										배송준비 전상태의 상품에 한해 종료 가능합니다.&nbsp;<br> <br> 제6조. 정기배송
										서비스 이용의 제한<br> ① 고객의 통지 또는 과실에 의해서 정기배송 서비스가 중지되는 경우(일부
										상품에 대하여 정기배송 서비스가 중지되는 경우를 포함합니다.) 해당 상품의 정기배송 서비스 신청이 2개월의 범위
										내에서 제한될 수 있습니다.<br> ② 회사는 특정상품에 대하여 구매 수량을 제한할 수 있습니다.<br>
										③ 회사는 상품의 재판매 가능성이 있는 경우, 또는 불법적이거나 부당한 행위와 관련된 경우 정기배송 서비스
										제공을 제한할 수 있습니다.<br> ④ 서비스 이용의 제한에 대한 구체적인 기준은 내부 운영정책에 따라
										적용됩니다.<br> ⑤ 회사는 자체적인 시스템을 통한 모니터링과 각종 기관에서 접수된 민원 내용,
										수사기관의 정보 등을 통해 정황을 확인한 후, 정기배송 서비스 제한 사유 행위를 한 것으로 추정되는 경우
										정기배송 서비스 이용을 제한할 수 있습니다.<br> <br> 제7조. 기타<br> ①
										고객이 본 약관에 동의함으로써 약관의 효력이 발생하고(현재 계속 중인 정기배송 서비스에도 적용됩니다.),
										정기배송 서비스가 계속되는 동안 본 약관의 효력은 유지됩니다. 고객이 정기배송 서비스 이용을 시작하고 정기배송
										상품을 추가, 변경하는 경우에도 본 약관이 계속 적용됩니다.<br> ② 정기배송 서비스의
										개인정보보호정책은 회사 홈페이지의 개인정보취급방침을 준용합니다.<br> ③ 본 약관에서 정하지 아니한
										내용은 회사 이용약관에 따릅니다.<br> ④ 회사가 약관을 변경하는 경우에는 기존약관과 개정약관 및
										개정약관의 적용일자와 개정사유를 명시하여 현행약관과 함께 그 적용일자 7일 전부터 적용일 이후 상당한 기간 동안
										공지만을 하고, 개정 내용이 고객에게 불리한 경우에는 그 적용일자 30일 전부터 적용일 이후 상당한 기간 동안
										이를 회사 홈페이지에 공지하고 고객의 이메일 주소로 약관 개정 사실을 발송하여 고지합니다.<br> ⑤
										회사가 전항에 따라 고객에게 통지하면서 공지 또는 공지∙고지일로부터 개정약관 시행일 7일 후까지 거부의사를
										표시하지 아니하면 이를 승인한 것으로 본다는 뜻을 명확하게 고지하였음에도 불구하고 거부의 의사표시가 없는
										경우에는 변경된 약관을 승인한 것으로 봅니다. 고객이 개정약관에 동의하지 않을 경우 고객은 제5조에 따라
										정기배송 서비스를 종료시킬 수 있습니다.<br> <br> <br> <br>
										[부칙]<br> 제1조(시행일)<br> ① 이 약관은 2022년 9월 22일부터 적용됩니다.<br>
										② 종전의 약관은 이 약관으로 대체됩니다.&nbsp;
										<!--// 내용 -->
									</div> <!--// ui-slide-content -->
								</li>
								<!--// ui-toggle-slide -->
								<!--// 회원가입 약관동의 -->
								<!-- 개인정보처리방침 동의 -->
								<li class="ui-toggle-slide">
									<div class="inner-flex">
										<div class="custom-checkbox left-item1" onclick="termsBtn();">
											<input type="checkbox"
												id="member-join-general-agree-user-info-check"
												class="checkbox"
												name="member-join-general-agree-user-info-check"
												onclick="onClickMemberJoinCheckItem();"> <label
												for="member-join-general-agree-user-info-check"><span
												class="text-guide-sm2">(필수)</span> 개인정보 수집 및 이용 동의</label>
										</div>
										<button type="button" class="btn-box-link1 ui-slide-btn">
											<i class="ico-arr-toggle"></i>
										</button>
									</div> <!--// inner-flex -->
									<div class="terms-inner-box table-box ui-slide-content">
										<!-- 내용 -->
										<table class="policy-agree-table">
											<caption class="hidden">개인정보 수집·이용 동의</caption>
											<colgroup>
												<col style="width: 30%;">
												<col>
											</colgroup>
											<tbody>
												<tr>
													<th>개인정보 수집 · 이용 목적</th>
													<td class="tal">회원 가입 및 회원 관리</td>
												</tr>
												<tr>
													<th>개인정보 수집 항목</th>
													<td class="tal">아이디, 비밀번호, 본인확인정보(CI, DI, 생년월일, 성별,
														내외국인구분), 휴대폰번호, 이메일</td>
												</tr>
												<tr class="line_dotted">
													<th>개인정보 보유 및 이용 기간</th>
													<td>통신비밀보호법, 전자상거래 등에서의 소비자보호에 관한 법률 등 관계법령의 규정에 의하여
														보존할 필요가 있는 경우 회사는 관계법령에서 정한 일정한 기간 동안 회원정보 를 보관합니다. 이 경우
														회사는 보관하는 정보를 그 보관의 목적으로만 이용하며 보존기간은 아래와 같습니다.<br> -
														(전자상거래법) 표시·광고에 관한 기록 : 6개월<br> - (전자상거래법) 계약 또는
														청약철회, 대금결제, 재화 등의 공급기록 : 5년<br> - (전자상거래법) 소비자의 불만 또는
														분쟁처리에 관한 기록 : 3년<br> - (통신비밀보호법) 로그인 기록(로그기록, 접속지의
														추적자료) : 3개월<br> <br> 회원에서 탈퇴한 후 회원 재가입, 임의해지 등을
														반복적으로 행하여 회사가 제공하는 할인쿠폰, 이벤트 혜택 등으로 경제상의 이익을 취하거나 이 과정에서
														명의를 무단으로 사용하는 편법과 불법행위를 하는 회원을 차단 하고자 회원 탈퇴 후 90일 동안 보관합니다<br>
														- 부정이용기록에 대한 기록 : 1년
													</td>
												</tr>
												<tr>
													<th colspan="2" style="text-align: center">※
														이용자(정보주체자)는 개인정보 수집 및 이용 동의를 거부할 권리가 있습니다.<br> 단,
														개인정보 수집 및 이용 동의 거부 시 서비스 이용에 제약이 있을 수 있습니다.
													</th>
												</tr>
											</tbody>
										</table>
										<!--// 내용 -->
									</div> <!--// ui-slide-content -->
								</li>
								<!--// ui-toggle-slide -->
								<!--// 개인정보처리방침 동의 -->
								<!-- (선택) 개인정보처리방침 동의 -->
								<li class="ui-toggle-slide">
									<div class="inner-flex">
										<div class="custom-checkbox left-item1" onclick="termsBtn();">
											<input type="checkbox"
												id="member-join-general-agree2-user-info-check"
												class="checkbox"
												name="member-join-general-agree2-user-info-check"
												onclick="onClickMemberJoinCheckItem();"> <label
												for="member-join-general-agree2-user-info-check"><span
												class="text-guide-sm2">(선택)</span> 개인정보 수집 및 이용 동의</label>
										</div>
										<button type="button" class="btn-box-link1 ui-slide-btn">
											<i class="ico-arr-toggle"></i>
										</button>
									</div> <!--// inner-flex -->
									<div class="terms-inner-box table-box ui-slide-content">
										<!-- 내용 -->
										<table class="policy-agree-table">
											<caption class="hidden">개인정보 수집·이용 동의</caption>
											<colgroup>
												<col style="width: 30%;">
												<col>
											</colgroup>
											<tbody>
												<tr>
													<th>개인정보 수집 · 이용 목적</th>
													<td class="tal">회원 관리</td>
												</tr>
												<tr>
													<th>개인정보 수집 항목</th>
													<td class="tal">추천아이디</td>
												</tr>
												<tr class="line_dotted">
													<th>개인정보 보유 및 이용 기간</th>
													<td>통신비밀보호법, 전자상거래 등에서의 소비자보호에 관한 법률 등 관계법령의 규정에 의하여
														보존할 필요가 있는 경우 회사는 관계법령에서 정한 일정한 기간 동안 회원정보 를 보관합니다. 이 경우
														회사는 보관하는 정보를 그 보관의 목적으로만 이용하며 보존기간은 아래와 같습니다.<br> -
														(전자상거래법) 표시·광고에 관한 기록 : 6개월<br> - (전자상거래법) 계약 또는
														청약철회, 대금결제, 재화 등의 공급기록 : 5년<br> - (전자상거래법) 소비자의 불만 또는
														분쟁처리에 관한 기록 : 3년<br> - (통신비밀보호법) 로그인 기록(로그기록, 접속지의
														추적자료) : 3개월<br> <br> 회원에서 탈퇴한 후 회원 재가입, 임의해지 등을
														반복적으로 행하여 회사가 제공하는 할인쿠폰, 이벤트 혜택 등으로 경제상의 이익을 취하거나 이 과정에서
														명의를 무단으로 사용하는 편법과 불법행위를 하는 회원을 차단 하고자 회원 탈퇴 후 90일 동안 보관합니다<br>
														- 부정이용기록에 대한 기록 : 1년
													</td>
												</tr>
												<tr>
													<th colspan="2" style="text-align: center">※
														이용자(정보주체자)는 개인정보 수집 및 이용 동의를 거부할 권리가 있습니다.<br> 단,
														개인정보 수집 및 이용 동의 거부 시 서비스 이용에 제약이 있을 수 있습니다.
													</th>
												</tr>
											</tbody>
										</table>
										<!--// 내용 -->
									</div> <!--// ui-slide-content -->
								</li>
								<!--// ui-toggle-slide -->
								<!--// (선택) 개인정보처리방침 동의 -->
								<!-- 이메일수신동의, SMS 수신동의 -->
								<li>
									<div class="inner-flex">
										<div class="custom-checkbox left-item1">
											<input type="checkbox"
												id="member-join-general-agree-email-check" class="checkbox"
												name="member-join-general-agree-email-check"
												onclick="onClickMemberJoinCheckItem();"> <label
												for="member-join-general-agree-email-check"><span
												class="text-guide-sm2">(선택)</span> 이메일수신동의 <span
												class="add-service-text">(상품 및 서비스 안내, 이벤트 정보 및 혜택제공)</span></label>
										</div>
									</div> <!--// inner-flex -->
								</li>
								<li>
									<div class="inner-flex">
										<div class="custom-checkbox left-item1">
											<input type="checkbox"
												id="member-join-general-agree-sms-check" class="checkbox"
												name="member-join-general-agree-sms-check"
												onclick="onClickMemberJoinCheckItem();"> <label
												for="member-join-general-agree-sms-check"><span
												class="text-guide-sm2">(선택)</span> SMS(문자,카카오톡) 수신동의 <span
												class="add-service-text">(상품 및 서비스 안내, 이벤트 정보 및 혜택제공)</span></label>
										</div>
									</div> <!--// inner-flex -->
								</li>
								<!--// 이메일수신동의, SMS 수신동의 -->
							</ul>
						</div>
						<!--// terms-toggle-box-->
						<ul class="bl-list-type2">
							<li>회원정보 수정에서 언제든지 수신거부 하실 수 있습니다.</li>
							<li>상품 구매정보는 수신동의 여부 관계없이 받아 보실 수 있습니다.</li>
						</ul>
						<div id="member-join-general-agree-terms-check-error"></div>
						<div id="member-join-general-agree-user-info-check-error"></div>
					</div>
					<!--// form-group -->
					<div class="terms-btn-wrap text-center" onclick="termsBtnClick()">
						<button class="btn-dim" type="button">다음</button>
					</div>
				</div>
			</div>


			<div class="join-container join-container2" style="display: none;">
				<div class="join-area">
					<h2 class="join-title">회원가입</h2>
					<fieldset class="form-group-area">
						<legend>회원가입 항목 작성</legend>
						<div class="form-group">
							<div class="form-head">
								<label for="member-join-general-id-text" class="form-label">아이디<i
									class="es2"></i></label>
							</div>
							<!--// form-head -->
							<div class="input-group type-lg w-full">
								<input type="text" id="member-join-general-id-text"
									name="member-join-general-id-text" class="input-text w571"
									placeholder="4~16자 이상 영문 또는 숫자만 사용 가능" value=""> <span
									class="input-group-btn"><button type="button"
										id="btn-id-check" class="btn-form btn-default-ex"
										onclick="onClickMemberJoinVerifyLoginIdBtn();">
										<span>중복확인</span>
									</button></span>
							</div>
							<div id="member-join-general-id-text-error"></div>
						</div>
						<!--// form-group -->

						<div class="form-group">
							<div class="form-head">
								<label for="member-join-general-pw-text" class="form-label">비밀번호<i
									class="es2"></i></label>
							</div>
							<!--// form-head -->
							<div class="input-group type-lg w-full">
								<label for="member-join-general-pw-text" class="blind">비밀번호
									입력</label> <input type="password" id="member-join-general-pw-text"
									name="member-join-general-pw-text" class="input-text w571"
									placeholder="6 ~ 16자 영문, 숫자, 특수문자 1개 이상씩 혼용 필수"
									onblur="onEventMemberJoinPasswords();"
									onkeyup="onEventMemberJoinPasswords();">
							</div>
							<div class="input-group type-lg w-full">
								<label for="member-join-general-pw-confirm-text" class="blind">비밀번호
									확인</label> <input type="password"
									id="member-join-general-pw-confirm-text"
									name="member-join-general-pw-confirm-text"
									class="input-text w571" placeholder="비밀번호 확인"
									onblur="onEventMemberJoinPasswords();"
									onkeyup="onEventMemberJoinPasswords();">
							</div>
							<p class="text-guide-sm2" id="pw-guide-text1"
								style="display: none;">※ 6 ~ 16자 영문, 숫자, 특수문자 1개 이상씩 혼용 필수.</p>
							<p class="text-guide-sm2" id="pw-guide-text2"
								style="display: none;">※ 특수문자는 !, @, #, $, %, ^, &amp;, * 만
								사용 가능.</p>
							<p class="valid error" id="pw-error-text1" style="display: none;">비밀번호가
								일치하지 않습니다.</p>
						</div>
						<!--// form-group -->

						<div class="form-group">
							<div class="form-head">
								<label for="member-join-general-email-text" class="form-label">이메일<i
									class="es2"></i></label>
							</div>
							<!--// form-head -->
							<div class="input-group type-lg w-full">
								<input type="text" id="member-join-general-email-text"
									name="member-join-general-email-text" class="input-text w571"
									placeholder="이메일 주소" value=""
									onblur="onFocusOutMemberJoinEmailText();">
								<div class="input-group-form">
									<div class="ui-select select-box w135"
										id="member-join-general-email-domain"
										name="member-join-general-email-domain" data-value="">
										<a href="#none" title="선택" class="select-value"><span>직접입력</span></a>
										<div class="select-list">
											<ul>
												<li data-name=""><a href="#none"><span>직접입력</span></a></li>
												<li data-name="naver.com"><a href="#none"><span>naver.com</span></a></li>
												<li data-name="daum.net"><a href="#none"><span>daum.net</span></a></li>
												<li data-name="hanmail.net"><a href="#none"><span>hanmail.net</span></a></li>
												<li data-name="gmail.com"><a href="#none"><span>gmail.com</span></a></li>
												<li data-name="hotmail.com"><a href="#none"><span>hotmail.com</span></a></li>
												<li data-name="yahoo.co.kr"><a href="#none"><span>yahoo.co.kr</span></a></li>
												<li data-name="chollian.net"><a href="#none"><span>chollian.net</span></a></li>
												<li data-name="empal.com"><a href="#none"><span>empal.com</span></a></li>
												<li data-name="freechal.com"><a href="#none"><span>freechal.com</span></a></li>
												<li data-name="hitel.net"><a href="#none"><span>hitel.net</span></a></li>
												<li data-name="hanmir.com"><a href="#none"><span>hanmir.com</span></a></li>
												<li data-name="hanafos.com"><a href="#none"><span>hanafos.com</span></a></li>
												<li data-name="korea.com"><a href="#none"><span>korea.com</span></a></li>
												<li data-name="lycos.co.kr"><a href="#none"><span>lycos.co.kr</span></a></li>
												<li data-name="nate.com"><a href="#none"><span>nate.com</span></a></li>
												<li data-name="netian.com"><a href="#none"><span>netian.com</span></a></li>
												<li data-name="paran.com"><a href="#none"><span>paran.com</span></a></li>
												<li data-name="unitel.co.kr"><a href="#none"><span>unitel.co.kr</span></a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div id="member-join-general-email-text-error"></div>
						</div>
						<!--// form-group -->

						<div class="form-group reco-check">
							<div class="form-head">
								<label for="member-join-general-recomender-text"
									class="form-label">추천 아이디</label>
							</div>
							<!--// form-head -->
							<div class="input-group type-lg w-full">

								<input type="text" id="member-join-general-recomender-text"
									name="member-join-general-recomender-text" class="input-text"
									value="" placeholder="추천아이디 입력"> <span
									class="input-group-btn"><button type="button"
										class="btn-form btn-default-ex" onclick="fncRecomConf();">
										<span>확인하기</span>
									</button></span>
							</div>
						</div>
						<!--// form-group -->

						<div class="form-group">
							<div class="form-head">
								<label for="member-join-general-forever-Y" class="form-label">평생회원<i
									class="es2"></i></label>
							</div>
							<!--// form-head -->
							<ul class="form-horiz-list">
								<li>
									<div class="custom-radio">
										<input type="radio" id="member-join-general-forever-Y"
											class="radio" name="member-join-general-forever" value="Y"
											onclick="checkSubmitBtnState();"><label
											for="member-join-general-forever-Y"
											onclick="checkSubmitBtnState();">동의</label>
									</div>
								</li>
								<li>
									<div class="custom-radio">
										<input type="radio" id="member-join-general-forever-N"
											class="radio" name="member-join-general-forever" value="N"
											onclick="checkSubmitBtnState();"><label
											for="member-join-general-forever-N"
											onclick="checkSubmitBtnState();">동의안함</label>
									</div>
								</li>
							</ul>
							<ul class="bl-list-type2">
								<li>평생회원은 회원탈퇴 전까지 휴면회원으로 전환되지 않습니다.</li>
								<!--
                        <li>전상품 10% 할인쿠폰, 특급배송 무료 쿠폰을 추가로 드립니다.</li>
                        -->
							</ul>
						</div>
					</fieldset>

					<div class="btn-bottom-area">
						<button type="submit" id="member-join-general-submit-btn"
							class="btn-basic-lg2 btn-dim">
							<span>회원가입</span>
						</button>
						<!-- 활성화시 removeClass btn-dim -->
					</div>
					<!--// btn-bottom-area -->
				</div>
				<!--// join-area -->
				<div id="member-join-general-popup-content"></div>
			</div>
			<div>
				<input type="hidden" name="_csrf"
					value="43b114cb-4ac0-40e2-baa1-d7604f8c7e33">
			</div>
		</form>

	<!-- <script type="text/javascript">
		let memberJoinStatus = {
			isProceeding : false,
			isIdChecked : false,
			isPwChecked : false,
			isPw1Checked : false,
			isPw2Checked : false,
			isPwMatchCkecked : false,
			isEmailChecked : false,
			idErrorText : '',
			// 각 문자의 코드를 확인하여 문자의 바이트 크기를 취득하여 합산
			getByteLength : function(text) {
				let byteLength = 0;
				let charByte = 0;

				for (let i = 0; i < text.length; i++) {
					charByte = text.charCodeAt(i);
					byteLength += ((charByte >> 7) ? 2 : 1);
				}

				return byteLength;
			},
			// 숫자 전체 자리 수 중 남는 앞의 빈 숫자를 0으로 채움
			getPaddingZeroString : function(n, width) {
				n = n + '';
				return n.length >= width ? n : new Array(width - n.length + 1)
						.join('0')
						+ n;
			},
		};

		$(document).ready(
				function() {

					$('#join-general-form').attr('accept-charset', 'UTF-8');

					memberJoinStatus.isProceeding = false;
					memberJoinStatus.isIdChecked = false;
					memberJoinStatus.isPwChecked = false;
					memberJoinStatus.isEmailChecked = false;
					memberJoinStatus.idErrorText = '';

					$('#member-join-general-id-text-error').html('');
					$('#member-join-general-agree-terms-check-error').html('');
					$('#member-join-general-agree-user-info-check-error').html(
							'');

					if (verifyMemberJoinEmail()) {
						memberJoinStatus.isEmailChecked = true;
					}

					checkSubmitBtnState();

					// 커스텀 셀렉트 선택시 이벤트 처리
					const selEmailDomain = $(
							'#member-join-general-email-domain').find(
							'.select-list').find('li').children('a');
					selEmailDomain.on('click', function(e) {
						const selectData = $(this).parents('li').data('name');
						$('#member-join-general-email-domain').data('value',
								selectData.toString());
						memberJoinStatus.isEmailChecked = false;
						if (verifyMemberJoinEmail()) {
							memberJoinStatus.isEmailChecked = true;
						}
						checkSubmitBtnState();
						e.preventDefault();
					});

					//아이디 변경시
					$('#member-join-general-id-text').on('keyup', function() {
						$(this).val($(this).val().toLowerCase());
						setIdBtnClass(false);
					});

					$('.terms-toggle-box input[type=checkbox]').each(
							function() {
								$(this).prop('checked', false);
							});
				});

		///////////////////////////////////////////////////////
		// 이벤트 핸들러

		//id 버튼 class set
		function setIdBtnClass(isValid) {
			if (isValid) {
				$('#btn-id-check').attr('class',
						'btn-form btn-default-ex btn-done');
				$('#btn-id-check').find('span').text('확인완료');
			} else {
				if (isEmpty($('#member-join-general-id-text').val())) {
					$('#btn-id-check').attr('class', 'btn-form btn-default-ex');
					$('#btn-id-check').find('span').text('중복확인');
					$('#member-join-general-id-text-error').html('');
					memberJoinStatus.idErrorText = '';
				} else {
					$('#btn-id-check').attr('class',
							'btn-form btn-default btn-valid');
					$('#btn-id-check').find('span').text('중복확인');
					$('#member-join-general-id-text-error').html(
							memberJoinStatus.idErrorText);
				}
			}
		}

		function onClickMemberJoinCheckAll() {
			const checked = $('#member-join-general-agree-all-check').is(
					':checked');
			if (checked) {
				$('#member-join-general-agree-terms-check').prop('checked',
						true);
				$('#member-join-general-agree-user-info-check').prop('checked',
						true);
				$('#member-join-general-agree2-user-info-check').prop(
						'checked', true);
				$('#member-join-general-agree-sms-check').prop('checked', true);
				$('#member-join-general-agree-email-check').prop('checked',
						true);
			} else {
				$('#member-join-general-agree-terms-check').prop('checked',
						false);
				$('#member-join-general-agree-user-info-check').prop('checked',
						false);
				$('#member-join-general-agree2-user-info-check').prop(
						'checked', false);
				$('#member-join-general-agree-sms-check')
						.prop('checked', false);
				$('#member-join-general-agree-email-check').prop('checked',
						false);
			}

			checkSubmitBtnState();
		}

		function onClickMemberJoinCheckItem() {
			const termsChecked = $('#member-join-general-agree-terms-check')
					.is(':checked');
			const userInfoChecked = $(
					'#member-join-general-agree-user-info-check')
					.is(':checked');
			const userInfoChecked2 = $(
					'#member-join-general-agree2-user-info-check').is(
					':checked');
			const smsChecked = $('#member-join-general-agree-sms-check').is(
					':checked');
			const emailChecked = $('#member-join-general-agree-email-check')
					.is(':checked');

			if (termsChecked && userInfoChecked && userInfoChecked2
					&& smsChecked && emailChecked) {
				$('#member-join-general-agree-all-check').prop('checked', true);
			} else {
				$('#member-join-general-agree-all-check')
						.prop('checked', false);
			}

			checkSubmitBtnState();
		}

		function onClickMemberJoinVerifyLoginIdBtn() {
			memberJoinStatus.isIdChecked = false;

			if (verifyMemberJoinLoginIdAjax()) {
				memberJoinStatus.isIdChecked = true;
			}

			checkSubmitBtnState();
		}

		function onEventMemberJoinPasswords() {
			memberJoinStatus.isPwChecked = false;

			const inputPw = $('#member-join-general-pw-text').val();
			const inputPwConfirm = $('#member-join-general-pw-confirm-text')
					.val();

			if (isEmpty(inputPw) && isEmpty(inputPwConfirm)) {
				$('p[id^=pw-guide-text]').hide();
				memberJoinStatus.isPwChecked = false;
			} else {
				$('p[id^=pw-guide-text]').show();

				if (isEmpty(inputPw) == false)
					verifyMemberJoinPassword();
				if (isEmpty(inputPwConfirm) == false)
					verifyMemberJoinPwConfirm();
				if (isEmpty(inputPw) == false
						&& isEmpty(inputPwConfirm) == false) {
					verifyMemberJoinPasswordsMatching();
				}

				if (memberJoinStatus.isPw1Checked
						&& memberJoinStatus.isPw2Checked
						&& memberJoinStatus.isPwMatchChecked) {
					memberJoinStatus.isPwChecked = true;
				} else {
					memberJoinStatus.isPwChecked = false;
				}
			}

			checkSubmitBtnState();
		}

		function onFocusOutMemberJoinEmailText() {
			memberJoinStatus.isEmailChecked = false;

			if (verifyMemberJoinEmail()) {
				memberJoinStatus.isEmailChecked = true;
			}
			checkSubmitBtnState();
		}

		function onSubmitJoinGeneral() {
			if ($("#member-join-general-submit-btn").hasClass("btn-dim") === true) {
				return false;
			}

			//가입진행중인지 확인
			if (memberJoinStatus.isProceeding) {
				alert('회원가입 진행 중입니다.\n잠시 기다려주세요.');
				return false;
			}

			// 아이디 검증
			if (!verifyMemberJoinLoginIdAjax(true)) {
				memberJoinStatus.isIdChecked = false;
				$('#member-join-general-id-text').focus();
				checkSubmitBtnState();
				return false;
			}

			//비밀번호 미입력 검증
			if (!verifyMemberJoinPwEmpty()) {
				memberJoinStatus.isPwChecked = false;
				$('#member-join-general-pw-text').focus();
				checkSubmitBtnState();
				return false;
			}

			// 비밀번호 검증
			if (!verifyMemberJoinPassword(true)) {
				memberJoinStatus.isPwChecked = false;
				$('#member-join-general-pw-text').focus();
				checkSubmitBtnState();
				return false;
			}

			// 확인 비밀번호 검증
			if (!verifyMemberJoinPwConfirm(true)) {
				memberJoinStatus.isPwChecked = false;
				$('#member-join-general-pw-confirm-text').focus();
				checkSubmitBtnState();
				return false;
			}

			// 비밀번호/확인 비밀번호 같은지 확인
			if (!verifyMemberJoinPasswordsMatching(true)) {
				memberJoinStatus.isPwChecked = false;
				$('#member-join-general-pw-text').focus();
				checkSubmitBtnState();
				return false;
			}

			// 이메일 검증
			if (!verifyMemberJoinEmail(true)) {
				memberJoinStatus.isEmailChecked = false;
				$('#member-join-general-email-text').focus();
				checkSubmitBtnState();
				return false;
			}

			// 평생회원 체크여부
			if (!$('input[name=member-join-general-forever]').is(':checked')) {
				alert("평생회원 여부를 체크해주세요.");
				checkSubmitBtnState();
				return false;
			}

			$('#member-join-general-recomender-text').val(
					$('#member-join-general-recomender-text').val()
							.toLowerCase());
			const recomenderId = $('#member-join-general-recomender-text')
					.val();

			if (recomenderId.length > 0) {

				if (recomenderId == $('#member-join-general-id-text').val()) {
					alert('본인을 추천인 아이디로 등록할 수 없습니다.');
					return;
				}

				const paramMap = {
					'vLoginid' : recomenderId,
					'srchTarget' : 'RECOMMEND'
				};

				const paramStr = $.param(paramMap);
				let isSuccess = false;

				cmAjax({
					url : "/member/join/verifyRecommendIdAjax",
					async : false,
					type : "post",
					data : paramStr,
					dataType : "json",
					isBlock : true,
					success : function(data) {
						if (data.status === "1") {
							// alert(data.message);
							if (data.object === "N") {
								alert('추천하실 수 없는 아이디입니다.\n추천 아이디를 다시 확인해주세요.');
								isSuccess = false;
							} else {
								isSuccess = true;
							}
						} else if (data.status === "9") {
							alert(data.message);
						}
					},
					error : function(e) {
						alert(e);
						alert("에러");
					}
				});

				if (isSuccess === false) {
					return false;
				}
			}

			//이메일 검증
			const emailDomain = $('#member-join-general-email-domain').data(
					'value');
			const inputEmail = $('#member-join-general-email-text').val()
					+ (isEmpty(emailDomain) ? '' : '@' + emailDomain);

			cmAjax({
				url : "/member/join/verifyEmailAjax",
				async : false,
				type : "post",
				data : {
					vEmail : inputEmail
				},
				dataType : "json",
				isBlock : true,
				success : function(data) {
					if (data.status === "1") {
						if (data.object === 0) {
							isSuccess = true;
						} else {
							alert('이미 가입된 이메일 주소입니다.');
							isSuccess = false;
						}
					} else {
						const alertMsg = (isEmpty(data.message) ? '시스템 오류입니다. 잠시 후 다시 시도해주세요.'
								: data.message)
						alert(alertMsg);
					}
				},
				error : function(e) {
					alert(e);
					alert("에러");
				}
			});

			if (isSuccess === false) {
				return false;
			}

			memberJoinStatus.isProceeding = true;
			return true;
		}
		///////////////////////////////////////////////////////

		///////////////////////////////////////////////////////
		// 항목 검증 함수
		function verifyMemberJoinPwEmpty() {
			let password = $('#member-join-general-pw-text').val();
			const pwLength = password.length;

			if (pwLength === 0) {
				alert('비밀번호를 입력해주세요.');
				$('#pw-guide-text1').addClass('error');
				return false;
			}

			let pwConfirm = $('#member-join-general-pw-confirm-text').val();
			const pwConfirmLen = pwConfirm.length;

			if (pwConfirmLen === 0) {
				alert('비밀번호 확인을 입력해주세요.');
				$('#pw-guide-text1').addClass('error');
				return false;
			}

			return true;
		}
		// 아이디 중복 체크
		function verifyMemberJoinLoginIdAjax(alertYn) {
			if (alertYn == null || alertYn == '') {
				alertYn = false;
			}

			$('#member-join-general-id-text').val(
					$('#member-join-general-id-text').val().toLowerCase());
			const loginId = $('#member-join-general-id-text').val();

			if (loginId.length === 0) {
				alert('회원 ID를 입력해주세요.');
				return false;
			}

			const isValid = (loginId.length >= 4 && loginId.length <= 16)
					&& (loginId.search(/^[a-zA-Z]+(\w+)*$/) !== -1);

			if (!isValid) {
				memberJoinStatus.idErrorText = '<p class="valid error">4~16자 영문 또는 숫자만 사용 가능합니다. 첫 글자는 숫자가 아니어야 합니다.</p>';
				if (alertYn)
					alert('회원 ID를 확인해 주세요.');
				return false;
			}

			const paramMap = {
				'vLoginid' : loginId,
				'srchTarget' : 'ID'
			};

			const paramStr = $.param(paramMap);

			let isSuccess = false;

			cmAjax({
				url : "/member/join/verifyLoginIdAjax",
				async : false,
				type : "post",
				data : paramStr,
				dataType : "json",
				isBlock : true,
				success : function(data) {
					if (data.status === "1") {
						// alert(data.message);
						if (data.object === "N") {
							$('#member-join-general-id-text-error').html(
									'<p class="valid">사용 가능한 아이디입니다.</p>');
							memberJoinStatus.idErrorText = '';
							isSuccess = true;
						} else {
							memberJoinStatus.idErrorText = '<p class="valid error">사용 할 수 없는 아이디입니다.</p>';
							if (alertYn)
								alert('회원 ID를 확인해 주세요.');
							isSuccess = false;
						}
					} else if (data.status === "9") {
						alert(data.message);
					}
				},
				error : function(e) {
					alert(e);
					alert("에러");
				}
			});

			if (!isSuccess) {
				return false;
			}

			return true;
		}

		// 패스워드 입력란 검증
		function verifyMemberJoinPassword(alertYn) {
			memberJoinStatus.isPw1Checked = false;
			let password = $('#member-join-general-pw-text').val();
			const pwLength = password.length;

			if (alertYn == null || alertYn == '') {
				alertYn = false;
			}

			if (pwLength > 16) {
				$('#member-join-general-pw-text')
						.val(password.substring(0, 16));
			} else if (pwLength < 6) {
				$('#pw-guide-text1').addClass('error');
				if (alertYn)
					alert('비밀번호를 확인해주세요.');
				return false;
			}

			if (password
					.search(/^[a-zA-Z0-9!@#$%^&*]+( [a-zA-Z0-9!@#$%^&*]+)*$/) === -1) {
				$('#pw-guide-text2').addClass('error');
				if (alertYn)
					alert('비밀번호를 확인해주세요.');
				return false;
			}

			if (password.search(/[A-Za-z]/) === -1
					|| password.search(/[0-9]/) === -1
					|| password.search(/[!@#$%^&*]/) === -1) {
				$('#pw-guide-text1').addClass('error');
				$('#pw-guide-text2').addClass('error');
				if (alertYn)
					alert('비밀번호를 확인해주세요.');
				return false;
			}

			$('p[id^=pw-guide-text]').removeClass('error');

			memberJoinStatus.isPw1Checked = true;

			return true;
		}

		// 패스워드 확인란 검증
		function verifyMemberJoinPwConfirm(alertYn) {
			memberJoinStatus.isPw2Checked = false;
			let pwConfirm = $('#member-join-general-pw-confirm-text').val();
			const pwConfirmLen = pwConfirm.length;

			if (alertYn == null || alertYn == '') {
				alertYn = false;
			}

			if (pwConfirmLen > 16) {
				$('#member-join-general-pw-confirm-text').val(
						pwConfirm.substring(0, 16));
			} else if (pwConfirmLen < 6) {
				$('#pw-guide-text1').addClass('error');
				if (alertYn)
					alert('비밀번호를 확인해주세요.');
				return false;
			}

			if (pwConfirm
					.search(/^[a-zA-Z0-9!@#$%^&*]+( [a-zA-Z0-9!@#$%^&*]+)*$/) === -1) {
				$('#pw-guide-text2').addClass('error');
				if (alertYn)
					alert('비밀번호를 확인해주세요.');
				return false;
			}

			if (pwConfirm.search(/[A-Za-z]/) === -1
					|| pwConfirm.search(/[0-9]/) === -1
					|| pwConfirm.search(/[!@#$%^&*]/) === -1) {
				$('#pw-guide-text1').addClass('error');
				$('#pw-guide-text2').addClass('error');
				if (alertYn)
					alert('비밀번호를 확인해주세요.');
				return false;
			}

			$('p[id^=pw-guide-text]').removeClass('error');
			memberJoinStatus.isPw2Checked = true;

			return true;
		}

		// 패스워드와 패스워드 확인란 일치 여부 검증
		function verifyMemberJoinPasswordsMatching(alertYn) {
			memberJoinStatus.isPwMatchChecked = false;
			let password = $('#member-join-general-pw-text').val();
			let pwConfirm = $('#member-join-general-pw-confirm-text').val();

			if (alertYn == null || alertYn == '') {
				alertYn = false;
			}

			if (password !== pwConfirm) {
				$('#pw-error-text1').show();
				if (alertYn)
					alert('비밀번호를 확인해주세요.');
				return false;
			}

			$('#pw-error-text1').hide();

			memberJoinStatus.isPwMatchChecked = true;

			return true;
		}

		// 이메일 입력란 검증
		function verifyMemberJoinEmail(isEmptyAlert) {
			$('#member-join-general-email-text').val(
					$.trim($('#member-join-general-email-text').val()));
			let email = $('#member-join-general-email-text').val();
			const emailDomain = $('#member-join-general-email-domain').data(
					'value');

			if (emailDomain != null && $.trim(emailDomain) != '') {
				email += '@' + emailDomain;
			}

			const emailLen = email.length;
			const emailDomainLen = emailDomain.length;

			$('#member-join-general-email-text-error').html('');
			if (isEmpty(email)) {
				if (isEmptyAlert) {
					alert('이메일을 입력해주세요.');
				}
				return false;
			}

			if (emailLen < 1) {
				$('#member-join-general-email-text-error').html(
						'<p class="valid error">이메일을 입력해주세요.</p>');
				if (isEmptyAlert)
					alert('이메일을 입력해주세요.');
				return false;
			}

			$('#member-join-general-email-text-error').html('');

			if (!email_check(email)) {

				if (emailDomainLen < 1) {
					$('#emailError')
							.html(
									'<p class="valid error">직접입력의 경우 전체 이메일을 정확하게 입력해주세요.</p>');
				} else {
					$('#emailError')
							.html(
									'<p class="valid error">직접입력이 아닌 경우 도메인을 제외한 이메일 아이디를 정확하게 입력해주세요.</p>');
				}

				if (isEmptyAlert)
					alert('이메일을 확인해주세요.');
				return false;
			}

			/*
			if (emailDomainLen === 0 && (email.search(/(\w+\.)*\w+@(\w+\.)+[A-Za-z]+$/)) === -1) {
			    $('#member-join-general-email-text-error').html('<p class="valid error">직접입력의 경우 전체 이메일을 정확하게 입력해주세요.</p>');
			    return false;
			} else if (emailDomainLen > 0 && (email.search(/(\w+\.)*\w+$/) === -1)) {
			    $('#member-join-general-email-text-error').html('<p class="valid error">직접입력이 아닌 경우 도메인을 제외한 이메일 아이디를 정확하게 입력해주세요.</p>');
			    return false;
			}
			 */

			$('#member-join-general-email-text-error').html('');

			if (emailLen + emailDomainLen > 100) {
				$('#member-join-general-name-text-error').html(
						'<p class="valid error">이메일은 100자를 넘을 수 없습니다.</p>');
				if (isEmptyAlert)
					alert('이메일을 확인해주세요.');
				return false;
			}

			$('#member-join-general-email-domain-text').val(emailDomain);

			return true;
		}

		//이메일 정규식 체크
		function email_check(email) {
			var reg = /^[0-9a-zA-Z]([\.]?[-_0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
			return reg.test(email);
		}

		// 필수 입력 조건에 따라 회원 가입 버튼 활성화 여부 및 회원가입 약관, 개인정보처리 방침 에러 표시, 휴대전화번호 인증 완료 시 여부 체크 표시
		function checkSubmitBtnState() {
			//아이디 중복확인 후 버튼
			setIdBtnClass(memberJoinStatus.isIdChecked);

			console.log('memberJoinStatus.isIdChecked : ',
					memberJoinStatus.isIdChecked);
			console.log('memberJoinStatus.isPwChecked : ',
					memberJoinStatus.isPwChecked);
			console.log('memberJoinStatus.isEmailChecked : ',
					memberJoinStatus.isEmailChecked);
			console.log('member-join-general-forever : ', $(
					'input[name=member-join-general-forever]').is(':checked'));

			if (memberJoinStatus.isIdChecked
					&& memberJoinStatus.isPwChecked
					&& memberJoinStatus.isEmailChecked
					&& $('input[name=member-join-general-forever]').is(
							':checked')) {
				$('#member-join-general-submit-btn').removeClass('btn-dim');
				$('#member-join-general-submit-btn').addClass("btn-primary");
			} else {
				$('#member-join-general-submit-btn').addClass('btn-dim');
				$('#member-join-general-submit-btn').removeClass("btn-primary");
			}
		}
		///////////////////////////////////////////////////////

		function mathTrunc(num) {
			if (num > 0) {
				return Math.floor(num);
			} else {
				return Math.ceil(num)
			}
		}

		// 추천인 확인
		function fncRecomConf() {

			const recomenderId = $('#member-join-general-recomender-text')
					.val().toLowerCase();

			if (recomenderId.length > 0) {
				if (recomenderId == $('#member-join-general-id-text').val()
						.toLowerCase()) {
					alert('본인을 추천인 아이디로 등록할 수 없습니다.');
					return;
				}

				const paramMap = {
					'vLoginid' : recomenderId,
					'srchTarget' : 'RECOMMEND'
				};

				const paramStr = $.param(paramMap);

				cmAjax({
					url : "/member/join/verifyRecommendIdAjax",
					async : false,
					type : "post",
					data : paramStr,
					dataType : "json",
					isBlock : true,
					success : function(data) {
						if (data.status === "1") {
							// alert(data.message);
							if (data.object === "N") {
								alert('추천하실 수 없는 아이디입니다.\n추천 아이디를 다시 확인해주세요.');
							} else {
								alert('추천 가능 아이디 입니다.');
								$(
										".reco-check .input-group-btn .btn-form.btn-default-ex span")
										.text("확인완료");
							}
						} else if (data.status === "9") {
							alert(data.message);
						}
					},
					error : function(e) {
						alert(e);
						alert("에러");
					}
				});

			} else {
				alert('추천 아이디를 입력해주세요.');
			}

		}

		function termsBtn() {
			if (!$('#member-join-general-agree-terms-check').is(':checked')) {
				//$('#member-join-general-agree-terms-check-error').html('<p class="valid error">회원가입 약관에 동의해주세요.</p>');
			} else {
				//$('#member-join-general-agree-terms-check-error').html('');
			}

			if (!$('#member-join-general-agree-user-info-check').is(':checked')) {
				//$('#member-join-general-agree-user-info-check-error').html('<p class="valid error">개인정보처리방침에 동의해주세요.</p>');
			} else {
				//$('#member-join-general-agree-user-info-check-error').html('');
			}

			if ($('#member-join-general-agree-terms-check').is(':checked')
					&& $('#member-join-general-agree-user-info-check').is(
							':checked')) {
				$(".terms-btn-wrap button").removeClass('btn-dim');
				$(".terms-btn-wrap button").addClass("btn-primary");

			} else {
				$(".terms-btn-wrap button").addClass('btn-dim');
				$(".terms-btn-wrap button").removeClass("btn-primary");
			}
		}

		function termsBtnClick() {
			if ($(".terms-btn-wrap button").hasClass('btn-primary')) {
				// 이메일, SMS 수신 미동의 시 처리
				if (!$('#member-join-general-agree-email-check').is(':checked')
						|| !$('#member-join-general-agree-sms-check').is(
								':checked')) {
					if (confirm('이메일, SMS 수신에 동의하지 않으시는 경우, 할인쿠폰의 발급 또는 이벤트 참여가 제한될 수 있습니다. 이메일, SMS 수신에 동의하시겠습니까?')) {
						$('#member-join-general-agree-sms-check').prop(
								'checked', true);
						$('#member-join-general-agree-email-check').prop(
								'checked', true);

					}
				}
				if (!$('#member-join-general-agree2-user-info-check').is(
						':checked')) {
					if (confirm('(선택) 개인정보 수집 및 이용 동의하지 않으시는 경우, 추천아이디를 제한될 수 있습니다. (선택) 개인정보 수집 및 이용 동의하시겠습니까?')) {
						$('#member-join-general-agree2-user-info-check').prop(
								'checked', true);
					}
				}
				$(".terms-section").css("display", 'none');
				$(".join-container2").css('display', 'block');
				if (!$('#member-join-general-agree2-user-info-check').is(
						':checked')) {
					$(".reco-check").css("display", 'none');
				}
			}
		}
	</script> -->
</section>

	<%@include file="/templates/kgm/footer.jsp"%>

</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</html>