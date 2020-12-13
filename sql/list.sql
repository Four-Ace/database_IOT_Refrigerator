BEGIN TRANSACTION;

insert into REFRIGERATOR values(111,111,&quot;인천광역시 연수구 송도동 12-8&quot;,1);
insert into REFRIGERATOR values(222,222,&quot;서울특별시 강남구 역삼동 36-12&quot;,1);
insert into REFRIGERATOR values(333,333,&quot;인천광역시 연수구 연수동 22-6&quot;,1);
insert into REFRIGERATOR values(444,444,&quot;경기도 광명시 광명7동 325-81&quot;,1);
insert into REFRIGERATOR values(555,555,&quot;경기도 화성시 동탄면 중리 76&quot;,1);
insert into REFRIGERATOR values(666,666,&quot;서울특별시 동대문구 용두동 238-115&quot;,1);

insert into SUPPLIER values(011,1,2000,&quot;MEAT&quot;);
insert into SUPPLIER values(022,2,500,&quot;G_MARKET&quot;);
insert into SUPPLIER values(033,3,0,&quot;C_PANG&quot;);

insert into PRODUCT values(1,11,&quot;살라미 햄&quot;,3000,14);
insert into PRODUCT values(2,11,&quot;수제 햄&quot;,5000,14);
insert into PRODUCT values(3,11,&quot;육포&quot;,15000,60);
insert into PRODUCT values(4,11,&quot;프라임 안심 250(냉동)&quot;,11000,7);
insert into PRODUCT values(5,11,&quot;프라임 등심 250(냉동)&quot;,9000,7);
insert into PRODUCT values(6,11,&quot;프라임 안심 250(냉장)&quot;,18000,3);
insert into PRODUCT values(7,11,&quot;프라임 등심 250(냉장)&quot;,14000,3);
insert into PRODUCT values(8,11,&quot;횡성 한우 안심 250(냉장)&quot;,25000,3);
insert into PRODUCT values(9,11,&quot;횡성 한우 등심 250(냉장)&quot;,23000,3);
insert into PRODUCT values(10,11,&quot;횡성 한우 세트 2000(냉장)&quot;,185000,3);
insert into PRODUCT values(11,11,&quot;한돈 목살 500(냉장)&quot;,9900,3);
insert into PRODUCT values(12,11,&quot;한돈 벌집 삽겸 구이용 500(냉장)&quot;,10900,3);
insert into PRODUCT values(13,11,&quot;한돈 앞다리살 수육용 500(냉장)&quot;,5900,3);
insert into PRODUCT values(14,11,&quot;한돈 폭립 등갈비 구이용 500(냉장)&quot;,9900,3);
insert into PRODUCT values(15,11,&quot;한돈 장조림,카레용 500(냉장)&quot;,4900,3);

insert into PRODUCT values(16,22,&quot;파&quot;,3000,14);
insert into PRODUCT values(17,22,&quot;양파&quot;,2000,14);
insert into PRODUCT values(18,22,&quot;마늘&quot;,2000,21);
insert into PRODUCT values(19,22,&quot;쌈장&quot;,4000,90);
insert into PRODUCT values(20,22,&quot;통후추&quot;,8000,270);
insert into PRODUCT values(21,22,&quot;오미자&quot;,30000,270);
insert into PRODUCT values(22,22,&quot;로즈마리&quot;,8900,14);
insert into PRODUCT values(23,22,&quot;참기름&quot;,7000,360);
insert into PRODUCT values(24,22,&quot;올리브유&quot;,12000,360);
insert into PRODUCT values(25,22,&quot;케첩&quot;,3900,180);
insert into PRODUCT values(26,22,&quot;마요네즈&quot;,4900,180);
insert into PRODUCT values(27,22,&quot;설탕&quot;,2200,270);
insert into PRODUCT values(28,22,&quot;소금&quot;,1500,360);
insert into PRODUCT values(29,22,&quot;미원&quot;,6500,360);
insert into PRODUCT values(30,22,&quot;굴소스&quot;,7500,210);

insert into PRODUCT values(31,33,&quot;계란&quot;,4500,14);
insert into PRODUCT values(32,33,&quot;바게트&quot;,6000,5);
insert into PRODUCT values(33,33,&quot;냉동 새우&quot;,15000,14);
insert into PRODUCT values(34,33,&quot;사과 6개&quot;,5000,14);
insert into PRODUCT values(35,33,&quot;파인애플&quot;,3000,7);
insert into PRODUCT values(36,33,&quot;어묵&quot;,3000,28);
insert into PRODUCT values(37,33,&quot;떡볶이 떡&quot;,2000,60);
insert into PRODUCT values(38,33,&quot;맛살 24개&quot;,5500,14);
insert into PRODUCT values(39,33,&quot;우유&quot;,1980,7);
insert into PRODUCT values(40,33,&quot;체다치즈&quot;,11000,21);
insert into PRODUCT values(41,33,&quot;피자치즈&quot;,15000,21);
insert into PRODUCT values(42,33,&quot;비요뜨 6개&quot;,4500,14);
insert into PRODUCT values(43,33,&quot;용가리&quot;,19000,180);
insert into PRODUCT values(44,33,&quot;비비고 왕만두&quot;,18000,150);
insert into PRODUCT values(45,33,&quot;비비고 교자만두&quot;,18000,150);</sql><current_tab id="1"/></tab_sql></sqlb_project>
COMMIT;