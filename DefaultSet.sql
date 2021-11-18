--통합게임 테이블 및 시퀀스 생성
create sequence GameAIO_seq increment by 1 start with 1;
create table GameAIO(
game_id number(4) primary key,
gi_name varchar2(90),
gi_dev varchar2(90),
gi_pub varchar2(90),
gi_date date,
gi_img varchar2(255),
gi_desc varchar2(450),
gi_like number(4),
gi_views number(5),
pl_pc number(1),
pl_mobile number(1),
pl_console number(1),
gn_action number(1),
gn_AnC number(1),
gn_rpg number(1),
gn_simul number(1),
gn_tactic number(1),
gn_SnR number(1)
);

--통합회원 테이블 및 시퀸스 생성
create sequence MemberAIO_seq increment by 1 start with 1;
create table MemberAIO(
member_id number(4) primary key,
mm_email varchar2(40),
mm_rt number(4),
mm_pw varchar2(20),
mm_name varchar2(50),
mm_nickname varchar2(50) unique,
mm_tel varchar2(30) unique,
mm_img varchar2(255),
mm_admin number(1)
);

--통합등록 테이블 및 시퀸스 생성
create sequence ApplyAIO_seq increment by 1 start with 1;
create table ApplyAIO(
apply_id number(4) primary key,
ap_writer number(4),
foreign key (ap_writer) references MemberAIO(member_id) on delete cascade,
ap_date date,
ap_content varchar2(900),
ap_state number(1),
ap_like number(4),
rv_reco number(1),
rv_star number(1),
rv_dec number(4),
bbs_hh varchar2(20),
bbs_title varchar2(300),
bbs_views number(5),
ap_review number(4),
ap_bbs number(4),
ap_reply number(4),
ap_rreply number(4),
ap_note number(4)
);

--게임 추가
insert into GameAIO values(GameAIO_seq.nextVal, '7 Days to Die', 'The Fun Pimps', 'The Fun Pimps Entertainment LLC', '2013-12-14', 'https://cdn.akamai.steamstatic.com/steam/apps/251570/header.jpg?t=1614101602', '7 Days to Die는 1인칭 슈팅, 서바이벌 호러, 타워 방어, 롤플레잉 게임의 독특한 조합인 오픈 월드 게임이다. 먼저 나온 결정적인 좀비 서바이벌 샌드박스 RPG를 플레이하세요. 나베스가네가 기다리고 있다!', 0, 0, 1,0,1, 0,1,0,1,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'Ailens: Fireteam Elite', 'Cold Iron Studios', 'Cold Iron Studios', '2021-08-24', 'https://cdn.akamai.steamstatic.com/steam/apps/1549970/header.jpg?t=1635551535', '상징적인 에일리언 우주를 배경으로 한 에일리언: 파이어팀 엘리트(Fireteam Elite)는 진화하는 Xenomorph의 위협을 억제하기 위한 필사적인 싸움으로 굳어진 해병들로 구성된 소방대를 떨어뜨리는 협력적인 3인칭 생존 사격수입니다.', 0, 0, 1,0,1, 1,0,1,0,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'Albion Online', 'Sandbox Interactive GmbH', 'Sandbox Interactive GmbH', '2017-07-17', 'https://cdn.akamai.steamstatic.com/steam/apps/761890/header.jpg?t=1619087946', '알비온라인은 플레이어 중심의 경제, 클래스리스 전투 시스템, 치열한 PvP 전투를 특징으로 하는 판타지 샌드박스 MMORPG이다. 위험과 기회가 가득한 광활한 열린 세상을 탐험하십시오. 부를 키우고 동맹을 맺으며 알비온의 세계에 흔적을 남겨라.', 0, 0, 1,1,1, 0,0,1,0,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'Among Us', 'Innersloth', 'Innersloth', '2018-11-16', 'https://cdn.akamai.steamstatic.com/steam/apps/945360/header_alt_assets_2.jpg?t=1636485325', '4~15명의 선수를 위한 팀워크와 배신의 온라인 및 지역 파티 게임...우주에서!', 0, 0, 1,1,1, 0,1,0,0,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'Back 4 Blood', 'Turtle Rock Studios', 'Warner Bros. Games', '2021-10-13', 'https://cdn.akamai.steamstatic.com/steam/apps/924970/header.jpg?t=1636477218', '백 포 블러드는 비평가들로부터 호평을 받은 레프트 포 데드 프랜차이즈의 제작자들이 만든 짜릿한 1인칭 슈팅 게임이다. 치열한 4인 공동 작업 내러티브 캠페인, 인간으로서의 경쟁력 있는 멀티플레이어 또는 리든, 그리고 여러분을 계속 활동하게 하는 열광적인 게임플레이를 경험해 보십시오.', 0, 0, 1,0,1, 1,0,1,0,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'BATTLETECH', 'Harebrained Schemes', 'Paradox Interactive', '2018-04-25', 'https://cdn.akamai.steamstatic.com/steam/apps/637090/header.jpg?t=1615972925', '혹독한 성간 내전에 휘말릴 때 물 위에 떠 있기 위해 고군분투하며 그들을 조종하는 Mechs와 MechWarriors의 용병 복장을 지휘하십시오.', 0, 0, 1,0,0, 0,0,0,1,1,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'BeamNG.drive', 'BeamNG', 'BeamNG', '2015-05-30', 'https://cdn.akamai.steamstatic.com/steam/apps/284160/header.jpg?t=1629198641', '모든 것을 할 수 있는 동적 연체 물리학 차량 시뮬레이터입니다.', 0, 0, 1,0,0, 0,0,0,1,0,1);
insert into GameAIO values(GameAIO_seq.nextVal, 'Blasphemous', 'The Game Kitchen', 'Team17', '2019-09-10', 'https://cdn.akamai.steamstatic.com/steam/apps/774361/header.jpg?t=1630077819', '신성모독은 Cvstodia의 악몽의 세계를 배경으로 한 숙련된 핵앤슬래시 전투를 가진 잔인한 액션 플랫폼 플레이어이다. 영원한 저주를 깨기 위해 여러분과 여러분의 퀘스트 사이에 서 있는 수많은 적들을 탐색하고, 능력을 업그레이드하고, 야만적인 처형을 수행합니다.', 0, 0, 1,0,1, 1,1,0,0,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'Bloons TD Battles', 'Ninja Kiwi', 'Ninja Kiwi', '2016-04-20', 'https://cdn.akamai.steamstatic.com/steam/apps/444640/header.jpg?t=1571743327', '승리를 위한 Bloon-pping 싸움에서 다른 선수들과 정면으로 맞서라. 가장 많이 팔리는 Bloons TD 5의 제작자들이 만든 이 모든 새로운 배틀즈 게임은 다인용 전투를 위해 특별히 고안되었으며, 블로를 직접 제어하고 상대편의 방어선을 지나 돌진할 수 있는 기능을 특징으로 합니다.', 0, 0, 1,1,1, 0,0,0,1,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'Conqueror-s Blade', 'Booming Tech', 'Booming Tech', '2019-07-11', 'https://cdn.akamai.steamstatic.com/steam/apps/835570/header.jpg?t=1635734518', '컨커러스 블레이드는 중세를 배경으로 한 온라인 전술 액션 게임이다. 군벌로서, 당신은 중세 군대를 지휘하게 될 것이고, 서사시 15 대 15 공성전에서 치명적인 무기로 적을 죽일 것이다. 이 광대한 대륙에서, 동맹을 맺고, 정복하고, 세계 최고의 통치자가 되어라.', 0, 0, 1,0,0, 1,0,0,0,1,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'Crossout', 'Targem Games', 'Gaijin Distribution KFT', '2019-07-27', 'https://cdn.cloudflare.steamstatic.com/steam/apps/386180/header.jpg?t=1635912835', '포스트 아포칼립스 MMO 액션 게임인 크로스아웃의 오픈 베타에 참여하세요! 수십 개의 교환 가능한 부품으로 독특한 전투기를 제작하고 폭발적인 PvP 온라인 전투에서 적을 파괴하십시오!', 0, 0, 1,0,1, 1,0,0,0,0,1);
insert into GameAIO values(GameAIO_seq.nextVal, 'Cyberpunk 2077', 'CD PROJEKT RED', 'CD PROJEKT RED', '2020-12-10', 'https://cdn.akamai.steamstatic.com/steam/apps/1091500/header.jpg?t=1621944801', '사이버펑크 2077은 힘, 매력, 신체 변형에 집착하는 거대 도시 나이트 시티를 배경으로 한 열린 세계 액션 어드벤처 이야기이다. 당신은 불멸의 열쇠인 독특한 이식물을 노리는 용병 무법자 V역을 연기합니다.', 0, 0, 1,0,1, 1,0,1,0,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'Darkest Dungeon', 'Red Hook Studios', 'Red Hook Studios', '2016-01-16', 'https://cdn.akamai.steamstatic.com/steam/apps/262060/header.jpg?t=1618936132', 'Darkest Dungeon은 모험의 심리적 스트레스에 대한 도전적인 고딕식 턴 기반 RPG이다. 상상도 할 수 없는 공포, 스트레스, 질병, 그리고 끊임없이 불러 일으키는 어둠에 맞서 흠이 있는 영웅들을 모집하고 훈련시키고 이끌어라. 모든 희망이 사라졌을 때 당신의 영웅들을 함께 할 수 있나요?', 0, 0, 1,0,1, 0,0,1,1,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'Deep Rock Galactic', 'Ghost Ship Games', 'Coffee Stain Publishing', '2020-05-13', 'https://cdn.akamai.steamstatic.com/steam/apps/548430/header_alt_assets_8.jpg?t=1636489070', 'Deep Rock Galactic은 우주 난쟁이들, 100% 파괴 가능한 환경, 절차적으로 생성된 동굴들, 그리고 끝없이 많은 외계 괴물들이 등장하는 1-4명의 플레이어 공동 FPS입니다.', 0, 0, 1,0,1, 1,0,1,0,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'Destiny 2', 'Bungie', 'Bungie', '2019-10-01', 'https://cdn.akamai.steamstatic.com/steam/apps/1085660/header.jpg?t=1631638993', 'Destiny 2는 여러분과 여러분의 친구들이 언제, 어디서나, 완전히 무료로 참여할 수 있는 하나의 진화하는 세계가 있는 액션 MMO입니다.', 0, 0, 1,0,1, 1,0,1,0,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'DiRT Rally 2.0', 'Codemasters', 'Codemasters', '2019-02-26', 'https://cdn.akamai.steamstatic.com/steam/apps/690790/header.jpg?t=1626343640', 'DiRT Rally 2.0은 아주 작은 실수로 인해 무대가 끝날 수 있다는 것을 알고 지금까지 가장 강력한 오프로드 차량을 타고 전 세계의 상징적인 랠리 장소들을 누비고 있습니다.', 0, 0, 1,0,1, 0,0,0,1,0,1);
insert into GameAIO values(GameAIO_seq.nextVal, 'Disgaea 5 Complete', 'Nippon Ichi Software, Inc.', 'NIS America, Inc.', '2018-10-23', 'https://cdn.akamai.steamstatic.com/steam/apps/803600/header.jpg?t=1600811806', '사악한 오버로드 보이드 다크, 수많은 네델월드를 노예로 삼으려 한다...그리고 오직 젊은 악마 킬리아만이 그를 막을 수 있다! 당신의 끈질긴 반란군을 모아 이 지옥 같은 모험에서 복수심을 풀어라! 위험도 높고, 데미지 캡도 높고, 파괴도 무한합니다!', 0, 0, 1,0,1, 0,0,1,1,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'DOOM Eternal', 'id Software', 'Bethesda Softworks', '2020-03-20', 'https://cdn.akamai.steamstatic.com/steam/apps/782330/header.jpg?t=1635282028', '지옥의 군대가 지구를 침략했다. 다양한 차원의 악마를 정복하고 인류의 마지막 파괴를 막기 위한 웅장한 싱글 플레이어 캠페인의 슬레이어가 되십시오. 그들이 두려워하는 유일한 것은... 는 당신이다', 0, 0, 1,0,1, 1,1,0,0,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'DOTA 2', 'Valve', 'Valve', '2013-07-10', 'https://cdn.cloudflare.steamstatic.com/steam/apps/570/header.jpg?t=1635466719', '매일 전세계 수백만 명의 선수들이 백 명이 넘는 도타 영웅들 중 한 명으로 전투에 참가한다. 그리고 그들의 10번째 놀이든 1,000번째 놀이든, 항상 새로운 것을 발견할 수 있습니다. 게임 플레이, 특징, 영웅의 지속적인 발전을 보장하는 정기적인 업데이트로, 도타 2는 자신만의 삶을 시작했다.', 0, 0, 1,0,0, 1,0,0,0,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'Eternal Return', 'Nimble Neuron', 'Nimble Neuron', '2020-10-14', 'https://cdn.akamai.steamstatic.com/steam/apps/1049590/header.jpg?t=1636647985', 'Eternal Return은 전략, 기계, 그리고 미적 캐릭터를 결합한 독특한 멀티플레이어 온라인 서바이벌 무대입니다. 계속해서 증가하는 테스트 대상들 중 하나를 선택하고, 18명의 선수 중 한 명으로 루미아 섬에서 혼자 또는 팀과 함께 플레이하고, 여러분의 힘, 능력, 그리고 재치를 증명해 보세요.', 0, 0, 1,0,0, 0,0,1,0,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'Fall Guys : Ultimate Knockout', 'Mediatonic', '', '2020-08-04', 'https://cdn.akamai.steamstatic.com/steam/apps/1097150/header.jpg?t=1630144986', 'Fall Guys는 한 명의 우승자가 남을 때까지 고조되는 혼돈의 라운드를 거친 후, 최대 60명의 플레이어가 참여하는 온라인 멀티플레이어 파티 게임입니다!', 0, 0, 1,0,1, 1,0,0,0,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'Farmer-s Life', 'FreeMind S.A.', 'FreeMind S.A.', '2021-08-05', 'https://cdn.akamai.steamstatic.com/steam/apps/1137750/header.jpg?t=1635939474', '농부의 삶은 악취와 오물과 고된 노동으로 가득 차 있다. 카슈미르는 노총각이며 농부이며 알코올 중독자이다. 그가 동유럽의 어느 곳에서도 가능한 한 오래 살아남도록 도와주세요. 여러분의 생활 리듬은 계절에 따라 결정될 것입니다.', 0, 0, 1,0,0, 0,1,0,1,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'Fast Food Manager', 'Cyber Eye', 'Cyber Eye', '2021-04-16', 'https://cdn.akamai.steamstatic.com/steam/apps/1519790/header.jpg?t=1618581527', '맨 처음부터 자신만의 사업을 시작하세요! 작은 커피 부스를 시작으로, 마을에서 가장 인기 있는 음식 서비스 체인을 건설하세요. 실험, 개발, 수익 창출.', 0, 0, 1,0,0, 0,0,0,1,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'FIFA 22', 'EA Canada', 'Electronic Arts', '2021-10-01', 'https://cdn.akamai.steamstatic.com/steam/apps/1506830/header.jpg?t=1636460927', 'Football™로 구동되는 EA SPORTS™ FIFA 22는 기본적인 게임 플레이 진전과 모든 모드에서 새로운 혁신 시즌을 통해 게임을 실제와 더욱 가깝게 만들어 줍니다.', 0, 0, 1,0,1, 0,0,0,0,0,1);
insert into GameAIO values(GameAIO_seq.nextVal, 'FlatOut 2', 'Bugbear Entertainment', 'Strategy First', '2006-08-01', 'https://cdn.akamai.steamstatic.com/steam/apps/2990/header.jpg?t=1570210036', '이런 무모한 운전은 사고가 아니야! 하지만 몇 가지 원인이 될 수도 있어. 이런 고속 경주에서, 당신이 더 많은 피해를 입힐수록, 더 좋다. 최고의 터보차지 자동차와 가장 미친 경쟁 운전자들은 당신의 최고의 파괴력을 시험하기 위해 기다리고 있다. 책임 운전자는 적용할 필요가 없습니다.', 0, 0, 1,0,1, 1,0,0,0,0,1);
insert into GameAIO values(GameAIO_seq.nextVal, 'Forager', 'HopFrog', 'Humble Games', '2019-04-19', 'https://cdn.akamai.steamstatic.com/steam/apps/751780/header.jpg?t=1631816115', '매우 인기 있고 기발한 이 "계속 적극적으로 하고 싶은 게으른 게임"입니다. 탐험, 제작, 자원 수집 및 관리, 비밀을 찾고 무에서 기반을 구축하세요! 탐험하고 확장할 땅을 사세요!', 0, 0, 1,0,1, 0,0,1,1,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'Forza Horizon 5', 'Playground Games', 'Xbox Game Studios', '2021-11-09', 'https://cdn.akamai.steamstatic.com/steam/apps/1551360/header.jpg?t=1636489113', '궁극의 지평선 모험이 기다리고 있습니다! 세계 최고의 자동차 수백 대를 타고 무한하고 재미있는 드라이빙 액션으로 활기차고 진화하는 멕시코의 열린 세계 풍경을 탐험해 보십시오. 지금 바로 Horizon Adventure를 시작하고 위시리스트에 추가하세요!', 0, 0, 1,0,1, 0,0,0,0,0,1);
insert into GameAIO values(GameAIO_seq.nextVal, 'Freestyle 2: Street Basketball', 'JOYCITY', 'JOYCITY', '2015-04-02', 'https://cdn.akamai.steamstatic.com/steam/apps/339610/header.jpg?t=1634737335', '픽업농구 VR은 1대 1, 2대 2, 말, 3점 대회 등 다양한 게임 모드로 최대 4명까지 플레이할 수 있는 멀티플레이 VR 게임이다. 픽업 바스켓볼 VR은 플레이어들이 전세계의 친구나 플레이어와 온라인으로 경쟁할 수 있게 해준다.', 0, 0, 1,0,0, 1,0,0,0,0,1);
insert into GameAIO values(GameAIO_seq.nextVal, 'Frostpunk', '11 bit studios', '11 bit studios', '2018-04-24', 'https://cdn.akamai.steamstatic.com/steam/apps/323190/header.jpg?t=1633608246', '프로스트펑크는 최초의 사회 서바이벌 게임이다. 지구상의 마지막 도시의 통치자로서, 시민들과 기반 시설들을 관리하는 것은 여러분의 의무입니다. 사회의 생존을 보장하기 위해 어떤 결정을 내릴 것인가? 한계점에 다다랐을 때 당신은 무엇을 할 것인가? 그 과정에서 누가 될 것인가?', 0, 0, 1,0,1, 0,0,0,1,1,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'Garfield Kart - Furious Racing', 'Artefacts Studio', 'Microids', '2019-11-07', 'https://cdn.akamai.steamstatic.com/steam/apps/1085510/header.jpg?t=1623848855', '유명한 라자냐를 좋아하는 고양이 가필드가 존, 오디, 그리고 동료들과 무턱대고 레이싱 게임을 하기 위해 돌아왔습니다!', 0, 0, 1,0,1, 0,1,0,0,0,1);
insert into GameAIO values(GameAIO_seq.nextVal, 'Grand Theft Auto V', 'Rockstar North', 'Rockstar Games', '2015-04-14', 'https://cdn.akamai.steamstatic.com/steam/apps/271590/header.jpg?t=1618856444', 'Grand Theft Auto V for PC는 플레이어들에게 수상 경력에 빛나는 Los Santos와 Blaine County의 세계를 최대 4k 이상의 해상도로 탐험할 수 있는 옵션과 초당 60프레임으로 게임을 실행할 수 있는 기회를 제공합니다.', 0, 0, 1,0,1, 1,1,0,0,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'HADES', 'Supergiant Games', 'Supergiant Games', '2020-09-17', 'https://cdn.akamai.steamstatic.com/steam/apps/1145360/header.jpg?t=1624463563', '바스티온, 트랜지스터, 파이레의 창조자들이 만든 이 악당 같은 던전 크롤러에서 지하세계에서 난도질을 하면서 죽음의 신에게 도전하라.', 0, 0, 1,0,1, 0,0,1,0,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'Hollow Kngiht', 'Team Cherry', 'Team Cherry', '2017-02-25', 'https://cdn.akamai.steamstatic.com/steam/apps/367520/header.jpg?t=1625363925', '할로우 나이트에서 네 길을 개척해! 거대한 곤충과 영웅들의 왕국을 관통하는 웅대한 액션 모험. 꼬불꼬불한 동굴, 오염된 생물들과 싸우고 엽기적인 벌레들과 친구가 되어 보세요. 이 모든 것들이 고전적이고 손으로 그린 2D 스타일로 그려집니다.', 0, 0, 1,0,1, 1,1,0,0,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'HUMANKIND', 'AMPLITUDE Studios', 'SEGA', '2021-08-17', 'https://cdn.akamai.steamstatic.com/steam/apps/1124300/header.jpg?t=1636390997', 'MINTORE™는 Amplitude Studio-매그넘 오푸스(Magnum opus) 게임으로, 문화, 역사 및 가치의 융합인 인류에 대한 전체 이야기를 다시 작성할 수 있습니다. 이 게임은 여러분만큼이나 독특한 문명을 창조할 수 있는 것입니다. 인류를 어디까지 밀어붙일 것인가?', 0, 0, 1,0,0, 0,0,0,1,1,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'It Takes Two', 'Hazelight', 'Electronic Arts', '2021-03-26', 'https://cdn.akamai.steamstatic.com/steam/apps/1426210/header_alt_assets_0.jpg?t=1627656469', 'It Takes Two에서 여러분의 인생에서 가장 미친 여행을 시작하세요. 친구를 초대하여 Friend-s Pass에 무료로 가입하고 매우 다양한 게임 플레이 문제를 해결하십시오.', 0, 0, 1,0,1, 1,1,0,0,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'LEGO Builder-s Journey', 'Light Brick Studio', 'LEGO® Games', '2021-06-22', 'https://cdn.akamai.steamstatic.com/steam/apps/1544360/header.jpg?t=1627987600', 'LEGO Builder-s Journey는 분위기 있고 기하학적인 퍼즐 게임으로, 때로는 지시를 따르고 때로는 규칙을 어기도록 합니다.', 0, 0, 1,0,1, 0,1,0,0,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'Marvel-s Guardians of the Galaxy', 'Eidos-Montréal', 'Square Enix', '2021-10-27', 'https://cdn.akamai.steamstatic.com/steam/apps/1088850/header.jpg?t=1636043233', '마블의 가디언즈 오브 갤럭시에 대한 신선한 시각으로 우주를 가로지르는 광란의 여행을 즐기십시오. 이 액션 어드벤처 게임에서 여러분은 예측할 수 없는 가디언즈를 한 번의 혼란에서 다음 번의 혼란으로 이끄는 스타 로드입니다. 네 말 되죠. 아마 그럴 거예요.', 0, 0, 1,0,1, 1,1,0,0,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'Minecraft Dungeons', 'Mojang Studios', 'Xbox Game Studios', '2021-09-23', 'https://cdn.akamai.steamstatic.com/steam/apps/1672970/header.jpg?t=1632517447', '고전적인 던전 크롤러에서 영감을 받아 마인크래프트 세계를 배경으로 한 흥미진진한 액션 어드벤처 게임을 통해 싸우십시오!', 0, 0, 1,0,1, 0,1,1,0,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'NARAKA: BLADEPOINT', '24 Entertainment', 'NetEase Games Montréal', '2021-08-12', 'https://cdn.akamai.steamstatic.com/steam/apps/1203220/header.jpg?t=1636638397', 'NARAKA: BLADEPOINT은 최대 60명의 PVP 신화적인 액션 전투 경험으로, 근거리 전투, 기동성에 저항하는 중력, 근거리 및 원거리 무기, 서사시 능력을 가진 전설적인 맞춤형 영웅, 극동 전설에서 영감을 받았습니다.', 0, 0, 1,0,1, 1,1,0,0,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'Need for Speed Heat', 'Ghost Games', 'Electronic Arts', '2019-11-08', 'https://cdn.akamai.steamstatic.com/steam/apps/1222680/header.jpg?t=1620488613', '해가 지기 시작하면 법의 테두리가 희미해지는 화이트 레이서인 니드 포 스피드™ 히트 디럭스 에디션에서 낮에는 서두르고 밤마다 위험을 감수하십시오.', 0, 0, 1,0,1, 1,0,0,0,0,1);
insert into GameAIO values(GameAIO_seq.nextVal, 'Nickelodeon All-Star Brawl', 'Ludosity', 'GameMill Entertainment', '2021-10-05', 'https://cdn.akamai.steamstatic.com/steam/apps/1414850/header.jpg?t=1634743986', '웅대한 플랫폼 전투에서 니켈로디언을 가장 좋아하는 사람들과 싸워보세요.', 0, 0, 1,0,0, 1,0,0,0,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'Overcooked! 2', 'Ghost Town Games Ltd', 'Team17', '2018-08-08', 'https://cdn.akamai.steamstatic.com/steam/apps/728880/header.jpg?t=1636654281', '너무 익힌 반찬은 혼란스러운 요리 액션의 새로운 도움입니다! 양파 왕국으로 돌아가 최대 4명의 플레이어가 즐길 수 있는 클래식 카우치 협동 또는 온라인 플레이에 요리사 팀을 모으세요. 앞치마를 꽉 잡아… 다시 세상을 구할 시간이에요!', 0, 0, 1,0,1, 1,1,0,0,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'Path of Exile', 'Grinding Gear Games', 'Grinding Gear Games', '2013-10-24', 'https://cdn.cloudflare.steamstatic.com/steam/apps/238960/header.jpg?t=1635819685', '여러분은 어둠의 대륙인 라에클라스트에서 살아남기 위해 고군분투하는 망명자입니다. 여러분을 부당하게 대했던 사람들에게 복수할 수 있는 힘을 얻기 위해 싸웁니다. 하드코어 게이머들에 의해 만들어진 Path of Exile은 어두운 판타지 세계를 배경으로 한 온라인 액션 RPG이다.', 0, 0, 1,0,1, 1,0,1,0,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'Planet Zoo', 'Frontier Developments', 'Frontier Developments', '2019-11-05', 'https://cdn.akamai.steamstatic.com/steam/apps/703080/header.jpg?t=1633429959', '플래닛 동물원에 야생동물을 위한 세상을 만드세요. 플래닛 코스터와 동물원 타이쿤의 개발자들로부터 최고의 동물원 심이 나온다. 상세한 서식지를 건설하고, 동물원을 관리하며, 여러분이 주변에 창조한 세상을 생각하고, 느끼고 탐험하는 진정한 살아있는 동물들을 만나보세요.', 0, 0, 1,0,0, 0,0,0,1,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'Plants vs Zombies GOTY Edition', 'PopCap Games', 'PopCap Games', '2009-05-06', 'https://cdn.akamai.steamstatic.com/steam/apps/3590/header.jpg?t=1615390608', '좀비들이 당신의 집을 공격하고 있어요. 유일한 방어는 식물 무기고뿐이에요! 페슈터나 체리 폭탄과 같은 좀비 잡종 식물로 무장한 여러분은 수십 종류의 좀비들이 죽어나가는 것을 막기 위해 빨리 생각하고 더 빨리 심어야 할 것입니다.', 0, 0, 1,1,1, 0,0,0,0,1,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'Poppy Playtime ', 'MOB Games', 'MOB Games', '2021-10-13', 'https://cdn.akamai.steamstatic.com/steam/apps/1721470/header.jpg?t=1634761279', '당신은 이 공포/퍼즐 모험에서 살아남아야 한다. 버려진 장난감 공장에서 여러분을 기다리고 있는 복수심에 불타는 장난감에서 살아남기 위해 노력하세요. GrabPack을 사용하여 전기 회로를 해킹하거나 멀리서 무엇이든 가져올 수 있습니다. 불가사의한 시설을 둘러보세요... 잡히지 마세요.', 0, 0, 1,0,0, 0,1,0,0,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'Potion Craft: Alchemist Simulator', 'niceplay games', 'tinyBuild', '2021-09-22', 'https://cdn.akamai.steamstatic.com/steam/apps/1210320/header.jpg?t=1636553497', 'Potion Craft는 여러분이 물약을 끓이기 위해 도구와 재료와 물리적으로 상호작용하는 연금술사 시뮬레이터입니다. 여러분은 새로운 요리법을 발명하고, 고객을 유치하고, 마음껏 실험해 보세요. 잊지 마세요. 온 동네가 당신에게 의지하고 있어요.', 0, 0, 1,0,0, 0,0,0,1,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'Raft', 'Redbeet Interactive', 'Axolot Games', '2018-05-24', 'https://cdn.akamai.steamstatic.com/steam/apps/648800/header.jpg?t=1635229387', '뗏목은 여러분과 여러분의 친구들을 웅대한 해양 모험으로 던집니다! 혼자서든 함께든, 플레이어들은 광대한 바다를 건너는 위험한 항해에서 살아남기 위해 싸웁니다! 파편을 모으고, 산호초를 뒤지고, 여러분만의 떠다니는 집을 지으세요. 하지만 사람을 잡아먹는 상어들을 조심하세요!', 0, 0, 1,0,0, 1,0,0,1,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'Satisfactory', 'Coffee Stain Studios', 'Coffee Stain Publishing', '2020-06-09', 'https://cdn.akamai.steamstatic.com/steam/apps/526870/header.jpg?t=1623335458', 'Satisfactory은 1인칭 오픈 월드 팩토리 구축 게임으로 약간의 탐험과 전투를 포함한다. 혼자 또는 친구들과 놀고, 외계 행성을 탐험하고, 다층 공장을 만들고, 컨베이어 벨트 천국으로 들어가세요!', 0, 0, 1,0,0, 0,0,0,1,1,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'Skul: The Hero Slayer', 'SouthPAW Games', 'NEOWIZ', '2021-01-21', 'https://cdn.akamai.steamstatic.com/steam/apps/1147560/header.jpg?t=1632907466', '가이드 - 스컬- 혼자서 제국군을 상대하고 그의 왕을 포로로부터 구출하기 위한 그의 임무를 수행하며, 오랫동안 액션으로 가득 찬 2D 플랫폼 플레이어입니다.', 0, 0, 1,0,1, 1,0,0,0,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'Slay the Spire', 'Mega Crit Games', 'Mega Crit Games', '2019-01-24', 'https://cdn.akamai.steamstatic.com/steam/apps/646570/header.jpg?t=1592339399', '우리는 카드게임과 로그리크를 융합하여 최고의 싱글 플레이어 데크빌더를 만들었다. 독특한 갑판을 만들고, 기괴한 생명체를 만나고, 엄청난 힘을 가진 유물을 발견하고, 첨탑을 처치하세요!', 0, 0, 1,0,0, 0,0,1,1,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'SMASH LEGENDS', '5minlab', 'LINE Games Corporation', '2021-04-13', 'https://cdn.akamai.steamstatic.com/steam/apps/1352080/header.jpg?t=1634023440', 'SMASH LEGENDS는 스릴 넘치는 실시간 3대 3 액션 게임이다. 원할 때마다 매력적인 LEGEND로 Library World의 격투장으로 바로 뛰어들어 보십시오. 그리고 자유롭게 연주할 수 있습니다. 재미에 동참하여 스팀, iOS 및 안드로이드 기기와 같은 여러 플랫폼의 플레이어와 겨루어 보십시오.', 0, 0, 1,1,1, 1,0,0,0,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'SnowRunner', 'Saber Interactive', 'Focus Home Interactive', '2021-05-18', 'https://cdn.akamai.steamstatic.com/steam/apps/1465360/header.jpg?t=1631194903', '차세대 오프로드 환경에 대비하십시오! 강력한 차량을 운전하고 극도로 개방된 환경을 극복하여 혼자서 또는 최대 3명의 친구와 함께 수십 개의 어려운 임무를 완수하십시오!', 0, 0, 1,0,1, 0,1,0,1,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'SpeedRunners', 'DoubleDutch Games', 'tinyBuild', '2016-04-20', 'https://cdn.akamai.steamstatic.com/steam/apps/207140/header.jpg?t=1631522005', '지역 및/또는 온라인에서 4명의 플레이어를 서로 겨루는 치열한 멀티플레이어 러닝 게임. 달리고, 점프하고, 휘두르고, 교활한 무기와 집기를 사용하여 상대방을 화면에서 쓰러뜨리세요! 가장 경쟁이 치열한 게임 중 하나입니다.', 0, 0, 1,0,1, 0,1,0,0,0,1);
insert into GameAIO values(GameAIO_seq.nextVal, 'Stardew Valley', 'ConcernedApe', 'ConcernedApe', '2016-02-27', 'https://cdn.akamai.steamstatic.com/steam/apps/413150/header.jpg?t=1608624324', '스타듀 밸리에 있는 할아버지의 오래된 농장을 물려받았군요. 당신은 물려받은 도구와 동전 몇 개로 무장하고 새로운 삶을 시작하기 시작했다. 여러분은 땅을 먹고 사는 법을 배울 수 있나요? 그리고 이 무성하게 자란 밭을 번창하는 집으로 바꿀 수 있나요?', 0, 0, 1,1,1, 0,0,1,1,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'STORY OF SEASONS: Pioneers of Olive Town', 'Marvelous Inc ', 'XSEED Games', '2021-09-16', 'https://cdn.akamai.steamstatic.com/steam/apps/1392960/header.jpg?t=1631749858', '여러분의 놀라운 할아버지와 친구들이 세운 평화로운 마을 올리브 타운에 오신 것을 환영합니다. 이제 그의 농장을 넘겨받았으니, 그의 유산을 이어가는 것이 네 일이다. 농작물을 심고, 동물을 기르고, 관계를 형성하고, 새로운 집의 거주자들을 알아가세요!', 0, 0, 1,0,1, 0,0,1,1,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'Super Animal Royale', 'Pixile', 'Modus Games', '2021-08-27', 'https://cdn.akamai.steamstatic.com/steam/apps/843380/header.jpg?t=1634679817', '이건 모욕을 위한 싸움이야! Super Animal Royale은 64명으로 구성된 광란의 탑 다운 방식의 2D 배틀로얄로, 살인 동물들이 버려진 사파리 공원을 가로질러 이빨, 발톱, 기관총과 싸우는 곳입니다.', 0, 0, 1,0,0, 1,1,0,0,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'Super Robot Wars 30', 'B.B.STUDIO CO', 'BANDAI NAMCO Entertainment', '2021-10-28', 'https://cdn.akamai.steamstatic.com/steam/apps/898750/header.jpg?t=1635442827', '30년이 지난 지금, 우리 세계의 미래를 위한 싸움은 계속되고 있습니다. 슈퍼로봇워즈는 다양한 메카 애니메이션의 캐릭터와 로봇을 함께 불러모아 서로의 적과 싸우는 전술 RPG이다.', 0, 0, 1,0,1, 0,0,1,0,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'Teamfight Manager', 'Team Samoyed', 'Team Samoyed', '2021-03-02', 'https://cdn.akamai.steamstatic.com/steam/apps/1372810/header.jpg?t=1635496962', 'Teamfight Manager는 당신이 e스포츠 팀의 코치인 시뮬레이션 게임이다. 플레이어를 관리하여 경기에 맞게 설정해야 합니다. 챔피언/선수들의 특성을 평가하여 최고의 선택과 금지를 만들어라! 현명한 전략은 선수 개개인의 기술 부족을 보충할 수 있다.', 0, 0, 1,0,0, 0,0,0,1,0,1);
insert into GameAIO values(GameAIO_seq.nextVal, 'TEKKEN 7', 'BANDAI NAMCO Studios Inc', 'BANDAI NAMCO Entertainment', '2017-06-02', 'https://cdn.cloudflare.steamstatic.com/steam/apps/389730/header.jpg?t=1636154852', '미시마 가문 구성원들 간의 오랜 씨족 전쟁의 웅대한 결말을 알아보세요. Unreal Engine 4에 의해 구동되는 전설적인 격투 게임 프랜차이즈는 놀라운 스토리 중심의 영화 배틀과 친구들과 라이벌들과 즐길 수 있는 치열한 결투로 맞서 싸운다.', 0, 0, 1,0,1, 1,0,0,0,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'Tennis World Tour', 'Breakpoint', 'Nacon', '2018-06-12', 'https://cdn.akamai.steamstatic.com/steam/apps/1223910/header.jpg?t=1617955145', '테니스 시뮬레이션의 베테랑들에 의해 개발된 새로운 표준: 30명의 프로 테니스 선수 중 한 명으로 경기하고, 모든 샷을 배우고, 각 유형의 표면을 마스터하고, 현실적인 직업 모드를 경험합니다. 플레이 스타일과 전략을 정의하여 세계 최고가 되십시오!', 0, 0, 1,0,1, 0,0,0,1,0,1);
insert into GameAIO values(GameAIO_seq.nextVal, 'The Elder Scrolls Online', 'Zenimax Online Studios', 'Bethesda Softworks', '2014-04-04', 'https://cdn.akamai.steamstatic.com/steam/apps/306130/header.jpg?t=1636601973', '수상 경력에 빛나는 온라인 멀티플레이어 RPG에 1,800만 명 이상의 플레이어와 함께 엘더 스크롤 세계에서 무한한 모험을 경험해 보십시오. 전투, 공예, 훔치기, 탐험, 그리고 다양한 종류의 장비와 능력을 결합하여 자신만의 놀이 스타일을 만들어냅니다. 게임을 구독할 필요가 없습니다.', 0, 0, 1,0,1, 0,1,1,0,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'The Witcher 3 : Wild Hunt', 'CD PROJEKT RED', 'CD PROJEKT RED', '2015-05-18', 'https://cdn.akamai.steamstatic.com/steam/apps/292030/header.jpg?t=1621939214', '북부 왕국 전역에서 전쟁이 격렬하게 진행되면서, 여러분은 인생의 가장 큰 계약을 맺게 됩니다. 세계의 모양을 바꿀 수 있는 살아있는 무기인 예언의 아이를 추적하는 것입니다.', 0, 0, 1,0,1, 0,1,1,0,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'Tricky Towers', 'WeirdBeard', 'WeirdBeard', '2016-08-02', 'https://cdn.akamai.steamstatic.com/steam/apps/437920/header.jpg?t=1608667399', '당신의 빛나는 의복과 마법의 힘으로, 이제 트릭티 타워를 지을 시간입니다! 우화의 땅에 벽돌을 쌓아 두어라. 누구의 탑이 가장 안정적일까? 이 미친 물리학 게임에서 친구들과 싸우고 명성을 얻으세요.', 0, 0, 1,0,1, 0,1,0,0,1,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'Trove', 'Trion Worlds', 'Trion Worlds', '2015-07-09', 'https://cdn.cloudflare.steamstatic.com/steam/apps/304050/header.jpg?t=1636663910', '친구를 붙잡고, 칼을 갈고, 궁극의 액션 MMO인 트로브로 모험을 떠나세요!', 0, 0, 1,0,0, 0,1,1,0,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'Valheim', 'Iron Gate AB', 'Coffee Stain Publishing', '2021-02-02', 'https://cdn.akamai.steamstatic.com/steam/apps/892970/header.jpg?t=1635490453', '바이킹 문화에서 영감을 받은 절차적으로 만들어진 연옥을 배경으로, 1~10명의 플레이어를 위한 잔인한 탐험과 생존 게임. 오딘의 후원을 받을 만한 사가에 맞서 싸워, 건설하고, 정복하라!', 0, 0, 1,0,0, 0,1,0,1,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'War Thunder', 'Gaijin Entertainment', 'Gaijin Distribution KFT', '2013-08-15', 'https://cdn.akamai.steamstatic.com/steam/apps/236390/header.jpg?t=1635498262', 'War Thunder는 20세기 초반부터 첨단 현대 전투부대에 이르기까지 가장 포괄적인 자유투플레이, 크로스 플랫폼, 항공, 장갑차, 해군 함정 전용 MMO 군사 게임이다. 지금 합류하여 육지, 공중 및 해상에서 주요 전투에 참여하십시오.', 0, 0, 1,0,1, 0,0,0,1,1,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'Warframe', 'Digital Extremes', 'Digital Extremes', '2013-03-26', 'https://cdn.akamai.steamstatic.com/steam/apps/230410/header.jpg?t=1636660763', '워프레임은 진화하는 공상 과학 세계를 배경으로 하는 3인칭 온라인 액션 협동 게임이다.', 0, 0, 1,0,1, 1,0,1,0,0,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'World of Tank Blitz', 'Wargaming Group Limited', 'Wargaming Group Limited', '2016-11-10', 'https://cdn.akamai.steamstatic.com/steam/apps/444200/header.jpg?t=1635226529', '과학 실험에 참여하고, 반응성 장갑이 장착된 탱크 두 대를 구해, 마라톤 모드로 달리세요! WoT Blitz에서, 특히 할로윈에는 모든 것이 가능합니다!', 0, 0, 1,1,1, 1,0,0,0,1,0);
insert into GameAIO values(GameAIO_seq.nextVal, 'WWE 2K19', 'Visual Concepts', '2K', '2018-10-09', 'https://cdn.akamai.steamstatic.com/steam/apps/817130/header.jpg?t=1568765205', 'WWE 2K19가 슈퍼스타 AJ 스타일즈와 함께 WWE 대표 비디오 게임으로 돌아옵니다! 다양한 제작 옵션, 매칭 유형 등을 경험해 보십시오!', 0, 0, 1,1,1, 1,0,0,0,0,1);
insert into GameAIO values(GameAIO_seq.nextVal, 'Yu-Gi-Oh! Duel Links', 'Konami Digital Entertainment', 'Konami Digital Entertainment', '2017-11-17', 'https://cdn.akamai.steamstatic.com/steam/apps/601510/header.jpg?t=1634690368', 'Yu-Gi-Oh! Duel Links로 전 세계의 Duelist들과 대결하세요! 차원을 넘나들며 모든 Duelist를 연결하는 세계로 들어가십시오. Duel World에서는 어떤 장소든 뜨거운 듀엘이 펼쳐지는 Duel Field로 변신합니다!', 0, 0, 1,1,1, 0,0,0,0,1,0);
insert into GameAIO values(GameAIO_seq.nextVal, '던전앤파이터', 'Neople', 'Neople', '2016-08-09', 'https://cdn.cloudflare.steamstatic.com/steam/apps/495910/header.jpg?t=1603208855', '최후의 싸움에 대비하라! 던전 파이터 온라인은 웅대한 스토리라인과 RPG 요소를 갖춘 고전적인 2D 액션 게임이다! 14개의 다양한 수업 중 하나를 선택하고, 펀치, 슬래시, 슛 또는 승리의 길을 소환하면서 고대의 미스터리를 풀어보세요!', 0, 0, 1,0,0, 1,0,1,0,0,0);

--회원 추가
insert into MemberAIO values (0,'admin@account.com',0,'password','관리자','어드민','010-1234-5678','https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png',1);
insert into MemberAIO values (memberaio_seq.nextval,'first@account.com',0,'firstpw','퍼스트','레이디퍼스트','010-1111-1111','https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png',0);
insert into MemberAIO values (memberaio_seq.nextval,'second@account.com',0,'secondpw','세컨드','기어세컨드','010-2222-2222','https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png',0);
insert into MemberAIO values (memberaio_seq.nextval,'third@account.com',0,'thirdpw','서드','서드파티','010-3333-3333','https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png',0);

--리뷰 추가
insert into ApplyAIO(apply_id, ap_writer, ap_date, ap_content, ap_state, ap_like, rv_reco, rv_star, rv_dec, ap_review)
values(ApplyAIO_seq.NEXTVAL, 0, SYSDATE, '리뷰 내용입니다', 1, 0, 1, 5, 0, 1);
--게시글 추가
insert into ApplyAIO(apply_id, ap_writer, ap_date, ap_content, ap_state, ap_like, bbs_hh, bbs_title, bbs_views, ap_bbs)
values(ApplyAIO_seq.NEXTVAL, 0, SYSDATE, '게시글 내용입니다', 1, 0, '말머리', '게시글 제목', 0, 1);
--댓글 추가
insert into ApplyAIO(apply_id, ap_writer, ap_date, ap_content, ap_state, ap_reply, ap_rreply)
values(ApplyAIO_seq.NEXTVAL, 0, SYSDATE, '댓글 내용입니다', 1, 2, ApplyAIO_seq.CURRVAL);
insert into ApplyAIO(apply_id, ap_writer, ap_date, ap_content, ap_state, ap_reply, ap_rreply)
values(ApplyAIO_seq.nextVal, 0, SYSDATE, '대댓글 내용입니다', 1, 2, 3);
--쪽지 추가
insert into ApplyAIO(apply_id, ap_writer, ap_date, ap_content, ap_state, ap_note)
values(ApplyAIO_seq.NEXTVAL, 0, SYSDATE, '쪽지 내용입니다', 1, 0);

--정리
drop table ApplyAIO;
drop table MemberAIO;
drop table GameAIO;
drop sequence GameAIO_seq;
drop sequence MemberAIO_seq;
drop sequence ApplyAIO_seq;