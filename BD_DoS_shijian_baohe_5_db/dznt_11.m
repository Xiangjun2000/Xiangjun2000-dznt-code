clc
clear
rand('state',sum(clock));
disp(datetime)
begint=datetime;
ts=0.01;
kk=3000;
tt=0:ts:(kk-1)*ts;


rtx1_11=[];
rtx1_21=[];
rtx1_31=[];
rtx1_41=[];
rtx1_12=[];
rtx1_22=[];
rtx1_32=[];
rtx1_42=[];

rtx2_11=[];
rtx2_21=[];
rtx2_31=[];
rtx2_41=[];
rtx2_12=[];
rtx2_22=[];
rtx2_32=[];
rtx2_42=[];

rttx1_11=[];
rttx1_21=[];
rttx1_31=[];
rttx1_41=[];
rttx1_12=[];
rttx1_22=[];
rttx1_32=[];
rttx1_42=[];

rttx2_11=[];
rttx2_21=[];
rttx2_31=[];
rttx2_41=[];
rttx2_12=[];
rttx2_22=[];
rttx2_32=[];
rttx2_42=[];

tkx1_11=0;
tkx1_21=0;
tkx1_31=0;
tkx1_41=0;

tkx1_12=0;
tkx1_22=0;
tkx1_32=0;
tkx1_42=0;

tkx2_11=0;
tkx2_21=0;
tkx2_31=0;
tkx2_41=0;

tkx2_12=0;
tkx2_22=0;
tkx2_32=0;
tkx2_42=0;

rta1_1=[];
rta1_2=[];
rta1_3=[];
rta1_4=[];
rtta1_1=[];
rtta1_2=[];
rtta1_3=[];
rtta1_4=[];

tka1_1=0;
tka1_2=0;
tka1_3=0;
tka1_4=0;

rta2_1=[];
rta2_2=[];
rta2_3=[];
rta2_4=[];
rtta2_1=[];
rtta2_2=[];
rtta2_3=[];
rtta2_4=[];

tka2_1=0;
tka2_2=0;
tka2_3=0;
tka2_4=0;

%虚拟控制器_1
%第一参数
c1_11 = 100;
c1_21 = 100;
c1_31 = 100;
c1_41 = 100;

c2_11 = 100;
c2_21 = 100;
c2_31 = 100;
c2_41 = 100;


%虚拟控制器_2
%第一参数
c1_12 = 80;
c1_22 = 80;
c1_32 = 80;
c1_42 = 80;

c2_12 = 80;
c2_22 = 80;
c2_32 = 80;
c2_42 = 80;

%自适应律ceta_1
%第一参数
r1_11 = 0.1;
r1_21 = 0.1;
r1_31 = 0.1;
r1_41 = 0.1;

r2_11 = 0.1;
r2_21 = 0.1;
r2_31 = 0.1;
r2_41 = 0.1;


%第二参数
ro1_11 = 2;
ro1_21 = 2;
ro1_31 = 2;
ro1_41 = 2;

ro2_11 = 2;
ro2_21 = 2;
ro2_31 = 2;
ro2_41 = 2;


%自适应律ceta_2
%第一参数
r1_12 = 0.1;
r1_22 = 0.1;
r1_32 = 0.1;
r1_42 = 0.1;

r2_12 = 0.1;
r2_22 = 0.1;
r2_32 = 0.1;
r2_42 = 0.1;


%第二参数
ro1_12 = 2;
ro1_22 = 2;
ro1_32 = 2;
ro1_42 = 2;

ro2_12 = 2;
ro2_22 = 2;
ro2_32 = 2;
ro2_42 = 2;

%一阶滤波器
k1_1 = 0.01;
k1_2 = 0.01;
k1_3 = 0.01;
k1_4 = 0.01;

k2_1 = 0.01;
k2_2 = 0.01;
k2_3 = 0.01;
k2_4 = 0.01;


%%%
derta1 = 0.3;
derta2 = 0.3;
derta3 = 0.3;
derta4 = 0.3;

c1 = 2;
c2 = 2;
c3 = 2;
c4 = 2;

%%%事件触发阈值
bar_x1_11 = 0.001;
bar_x1_21 = 0.001;
bar_x1_31 = 0.001;
bar_x1_41 = 0.001;

bar_x2_11 = 0.001;
bar_x2_21 = 0.001;
bar_x2_31 = 0.001;
bar_x2_41 = 0.001;

bar_x1_12 = 0.03;
bar_x1_22 = 0.03;
bar_x1_32 = 0.03;
bar_x1_42 = 0.03;

bar_x2_12 = 0.03;
bar_x2_22 = 0.03;
bar_x2_32 = 0.03;
bar_x2_42 = 0.03;

bar_alph_f1_12 = 0.02;
bar_alph_f1_22 = 0.02;
bar_alph_f1_32 = 0.02;
bar_alph_f1_42 = 0.02;

bar_alph_f2_12 = 0.02;
bar_alph_f2_22 = 0.02;
bar_alph_f2_32 = 0.02;
bar_alph_f2_42 = 0.02;


%饱和上下界
up1_1 = 40;
down1_1 = 40;
up2_1 = 40;
down2_1 = 40;

up1_2 = 40;
down1_2 = 40;
up2_2 = 40;
down2_2 = 40;

up1_3 = 40;
down1_3 = 40;
up2_3 = 40;
down2_3 = 40;

up1_4 = 40;
down1_4 = 40;
up2_4 = 40;
down2_4 = 40;


%初值
x1_110 = 0.1;
x1_210 = 0.2;
x1_310 = 0.3;
x1_410 = 0.4;

x1_120 = 0.1;
x1_220 = 0.2;
x1_320 = 0.3;
x1_420 = 0.4;

x2_110 = 0.1;
x2_210 = 0.1;
x2_310 = 0.1;
x2_410 = 0.1;

x2_120 = 0.1;
x2_220 = 0.1;
x2_320 = 0.1;
x2_420 = 0.1;


neta1_10 = 0;
neta1_20 = 0;
neta1_30 = 0;
neta1_40 = 0;

neta2_10 = 0;
neta2_20 = 0;
neta2_30 = 0;
neta2_40 = 0;

cota1_110 = 0;
cota1_210 = 0;
cota1_310 = 0;
cota1_410 = 0;

cota2_110 = 0;
cota2_210 = 0;
cota2_310 = 0;
cota2_410 = 0;




alph_f1_10=0;
alph_f1_20=0;
alph_f1_30=0;
alph_f1_40=0;

alph_f2_10=0;
alph_f2_20=0;
alph_f2_30=0;
alph_f2_40=0;


 gjian1_110=0.2;			
 gjian1_120=0.2;			
 gjian1_130=0.2;			
 gjian1_140=0.2;			
 gjian1_150=0.2;
 
 gjian1_210=0.1;			
 gjian1_220=0.1;			
 gjian1_230=0.1;			
 gjian1_240=0.1;			
 gjian1_250=0.1;
 
 gjian1_310=0.2;			
 gjian1_320=0.2;			
 gjian1_330=0.2;			
 gjian1_340=0.2;			
 gjian1_350=0.2;	
 
 gjian1_410=0.1;			
 gjian1_420=0.1;			
 gjian1_430=0.1;			
 gjian1_440=0.1;			
 gjian1_450=0.1;	

 gjian2_110=0.2;			
 gjian2_120=0.2;			
 gjian2_130=0.2;			
 gjian2_140=0.2;			
 gjian2_150=0.2;
 
 gjian2_210=0.1;			
 gjian2_220=0.1;			
 gjian2_230=0.1;			
 gjian2_240=0.1;			
 gjian2_250=0.1;
 
 gjian2_310=0.2;			
 gjian2_320=0.2;			
 gjian2_330=0.2;			
 gjian2_340=0.2;			
 gjian2_350=0.2;	
 
 gjian2_410=0.1;			
 gjian2_420=0.1;			
 gjian2_430=0.1;			
 gjian2_440=0.1;			
 gjian2_450=0.1;
 
 
 wjian1_110=0.2;			
 wjian1_120=0.2;			
 wjian1_130=0.2;			
 wjian1_140=0.2;			
 wjian1_150=0.2;
 
 wjian1_210=0.1;			
 wjian1_220=0.1;			
 wjian1_230=0.1;			
 wjian1_240=0.1;			
 wjian1_250=0.1;
 
 wjian1_310=0.2;			
 wjian1_320=0.2;			
 wjian1_330=0.2;			
 wjian1_340=0.2;			
 wjian1_350=0.2;	
 
 wjian1_410=0.1;			
 wjian1_420=0.1;			
 wjian1_430=0.1;			
 wjian1_440=0.1;			
 wjian1_450=0.1;	
 
 wjian2_110=0.2;			
 wjian2_120=0.2;			
 wjian2_130=0.2;			
 wjian2_140=0.2;			
 wjian2_150=0.2;
 
 wjian2_210=0.1;			
 wjian2_220=0.1;			
 wjian2_230=0.1;			
 wjian2_240=0.1;			
 wjian2_250=0.1;
 
 wjian2_310=0.2;			
 wjian2_320=0.2;			
 wjian2_330=0.2;			
 wjian2_340=0.2;			
 wjian2_350=0.2;	
 
 wjian2_410=0.1;			
 wjian2_420=0.1;			
 wjian2_430=0.1;			
 wjian2_440=0.1;			
 wjian2_450=0.1;
 
 
 alph_f1_120 = 0;
 alph_f1_220 = 0;
 alph_f1_320 = 0;
 alph_f1_420 = 0;
 
 alph_f2_120 = 0;
 alph_f2_220 = 0;
 alph_f2_320 = 0;
 alph_f2_420 = 0;
 

 neta1_00 = 0.1;
 neta2_00 = 0.1;
 
 peta1_120 = 0;
 peta1_220 = 0;
 peta1_320 = 0;
 peta1_420 = 0;
 
 peta2_120 = 0;
 peta2_220 = 0;
 peta2_320 = 0;
 peta2_420 = 0;
 
K=[ c1_11;c1_21;c1_31;c1_41;
    c1_12;c1_22;c1_32;c1_42;
    c2_11;c2_21;c2_31;c2_41;
    c2_12;c2_22;c2_32;c2_42;
    r1_11;r1_21;r1_31;r1_41;
    ro1_11;ro1_21;ro1_31;ro1_41;
    r2_11;r2_21;r2_31;r2_41;
    ro2_11;ro2_21;ro2_31;ro2_41;
    r1_12;r1_22;r1_32;r1_42;
    ro1_12;ro1_22;ro1_32;ro1_42;
    r2_12;r2_22;r2_32;r2_42;
    ro2_12;ro2_22;ro2_32;ro2_42;
    k1_1; k1_2; k1_3; k1_4;
    k2_1; k2_2; k2_3; k2_4;
    derta1; derta2; derta3; derta4;
    c1; c2; c3; c4;
    bar_x1_11; bar_x1_21; bar_x1_31; bar_x1_41;
    bar_x2_11; bar_x2_21; bar_x2_31; bar_x2_41;
    bar_x1_12; bar_x1_22; bar_x1_32; bar_x1_42;
    bar_x2_12; bar_x2_22; bar_x2_32; bar_x2_42;
    bar_alph_f1_12; bar_alph_f1_22; bar_alph_f1_32; bar_alph_f1_42;
    bar_alph_f2_12; bar_alph_f2_22; bar_alph_f2_32; bar_alph_f2_42;
    up1_1; up1_2; up1_3; up1_4;
    down1_1; down1_2; down1_3; down1_4;
    up2_1; up2_2; up2_3; up2_4;
    down2_1; down2_2; down2_3; down2_4;
    ];

for ii=1:kk
    if ii>=5 && ii<100 || ii>=340 && ii<520 || ii>=800 && ii<900 || ii>=1200 && ii<1240 || ii>=1600 && ii<1620
    [t,z]=ode45(@dznt_12_a,[(ii-1)*ts ii*ts],[x1_110; x1_210; x1_310; x1_410; 
    x1_120; x1_220; x1_320; x1_420;
    x2_110; x2_210; x2_310; x2_410; 
    x2_120; x2_220; x2_320; x2_420;  
    neta1_10; neta1_20; neta1_30; neta1_40;
    neta2_10; neta2_20; neta2_30; neta2_40;
    cota1_110; cota1_210; cota1_310; cota1_410;
    cota2_110; cota2_210; cota2_310; cota2_410;
    gjian1_110;gjian1_120;gjian1_130;gjian1_140;gjian1_150;
    gjian1_210;gjian1_220;gjian1_230;gjian1_240;gjian1_250;
    gjian1_310;gjian1_320;gjian1_330;gjian1_340;gjian1_350;
    gjian1_410;gjian1_420;gjian1_430;gjian1_440;gjian1_450;
    gjian2_110;gjian2_120;gjian2_130;gjian2_140;gjian2_150;
    gjian2_210;gjian2_220;gjian2_230;gjian2_240;gjian2_250;
    gjian2_310;gjian2_320;gjian2_330;gjian2_340;gjian2_350;
    gjian2_410;gjian2_420;gjian2_430;gjian2_440;gjian2_450;
    wjian1_110;wjian1_120;wjian1_130;wjian1_140;wjian1_150;
    wjian1_210;wjian1_220;wjian1_230;wjian1_240;wjian1_250;
    wjian1_310;wjian1_320;wjian1_330;wjian1_340;wjian1_350;
    wjian1_410;wjian1_420;wjian1_430;wjian1_440;wjian1_450;
    wjian2_110;wjian2_120;wjian2_130;wjian2_140;wjian2_150;
    wjian2_210;wjian2_220;wjian2_230;wjian2_240;wjian2_250;
    wjian2_310;wjian2_320;wjian2_330;wjian2_340;wjian2_350;
    wjian2_410;wjian2_420;wjian2_430;wjian2_440;wjian2_450;
    alph_f1_120; alph_f1_220; alph_f1_320; alph_f1_420;
    alph_f2_120; alph_f2_220; alph_f2_320; alph_f2_420;
    neta1_00; neta2_00;
    ],[],K);
    
    [m,n]=size(z);%获取矩阵的行数和列数

    ii
    
x1_110	=	z(m,1);
x1_210	=	z(m,2);
x1_310	=	z(m,3);
x1_410	=	z(m,4);

x1_120	=	z(m,5);
x1_220	=	z(m,6);
x1_320	=	z(m,7);
x1_420	=	z(m,8);


x2_110	=	z(m,9);
x2_210	=	z(m,10);
x2_310	=	z(m,11);
x2_410	=	z(m,12);

x2_120	=	z(m,13);
x2_220	=	z(m,14);
x2_320	=	z(m,15);
x2_420	=	z(m,16);

neta1_10 = z(m,17);
neta1_20 = z(m,18);
neta1_30 = z(m,19);
neta1_40 = z(m,20);

neta2_10 = z(m,21);
neta2_20 = z(m,22);
neta2_30 = z(m,23);
neta2_40 = z(m,24);


cota1_110 = z(m,25);
cota1_210 = z(m,26);
cota1_310 = z(m,27);
cota1_410 = z(m,28);

cota2_110 = z(m,29);
cota2_210 = z(m,30);
cota2_310 = z(m,31);
cota2_410 = z(m,32);



gjian1_110 = z(m,33);
gjian1_120 = z(m,34);
gjian1_130 = z(m,35);
gjian1_140 = z(m,36);
gjian1_150 = z(m,37);

gjian1_210 = z(m,38);
gjian1_220 = z(m,39);
gjian1_230 = z(m,40);
gjian1_240 = z(m,41);
gjian1_250 = z(m,42);
    
gjian1_310 = z(m,43);
gjian1_320 = z(m,44);
gjian1_330 = z(m,45);
gjian1_340 = z(m,46);
gjian1_350 = z(m,47);  

gjian1_410 = z(m,48);
gjian1_420 = z(m,49);
gjian1_430 = z(m,50);
gjian1_440 = z(m,51);
gjian1_450 = z(m,52);

gjian2_110 = z(m,53);
gjian2_120 = z(m,54);
gjian2_130 = z(m,55);
gjian2_140 = z(m,56);
gjian2_150 = z(m,57);

gjian2_210 = z(m,58);
gjian2_220 = z(m,59);
gjian2_230 = z(m,60);
gjian2_240 = z(m,61);
gjian2_250 = z(m,62);
    
gjian2_310 = z(m,63);
gjian2_320 = z(m,64);
gjian2_330 = z(m,65);
gjian2_340 = z(m,66);
gjian2_350 = z(m,67);  

gjian2_410 = z(m,68);
gjian2_420 = z(m,69);
gjian2_430 = z(m,70);
gjian2_440 = z(m,71);
gjian2_450 = z(m,72);


wjian1_110 = z(m,73);
wjian1_120 = z(m,74);
wjian1_130 = z(m,75);
wjian1_140 = z(m,76);
wjian1_150 = z(m,77);

wjian1_210 = z(m,78);
wjian1_220 = z(m,79);
wjian1_230 = z(m,80);
wjian1_240 = z(m,81);
wjian1_250 = z(m,82);
    
wjian1_310 = z(m,83);
wjian1_320 = z(m,84);
wjian1_330 = z(m,85);
wjian1_340 = z(m,86);
wjian1_350 = z(m,87);  

wjian1_410 = z(m,88);
wjian1_420 = z(m,89);
wjian1_430 = z(m,90);
wjian1_440 = z(m,91);
wjian1_450 = z(m,92);

wjian2_110 = z(m,93);
wjian2_120 = z(m,94);
wjian2_130 = z(m,95);
wjian2_140 = z(m,96);
wjian2_150 = z(m,97);

wjian2_210 = z(m,98);
wjian2_220 = z(m,99);
wjian2_230 = z(m,100);
wjian2_240 = z(m,101);
wjian2_250 = z(m,102);
    
wjian2_310 = z(m,103);
wjian2_320 = z(m,104);
wjian2_330 = z(m,105);
wjian2_340 = z(m,106);
wjian2_350 = z(m,107);  

wjian2_410 = z(m,108);
wjian2_420 = z(m,109);
wjian2_430 = z(m,110);
wjian2_440 = z(m,111);
wjian2_450 = z(m,112);


alph_f1_120 = z(m,113);
alph_f1_220 = z(m,114);
alph_f1_320 = z(m,115);
alph_f1_420 = z(m,116);

alph_f2_120 = z(m,117);
alph_f2_220 = z(m,118);
alph_f2_320 = z(m,119);
alph_f2_420 = z(m,120);


neta1_00 = z(m,121);
neta2_00 = z(m,122);



%
x1_11(ii)    =   x1_110;
x1_21(ii)    =   x1_210;
x1_31(ii)    =   x1_310;
x1_41(ii)    =   x1_410;

x1_12(ii)    =   x1_120;
x1_22(ii)    =   x1_220;
x1_32(ii)    =   x1_320;
x1_42(ii)    =   x1_420;

x2_11(ii)    =   x2_110;
x2_21(ii)    =   x2_210;
x2_31(ii)    =   x2_310;
x2_41(ii)    =   x2_410;

x2_12(ii)    =   x2_120;
x2_22(ii)    =   x2_220;
x2_32(ii)    =   x2_320;
x2_42(ii)    =   x2_420;


neta1_1(ii) = neta1_10;
neta1_2(ii) = neta1_20;
neta1_3(ii) = neta1_30;
neta1_4(ii) = neta1_40;

neta2_1(ii) = neta2_10;
neta2_2(ii) = neta2_20;
neta2_3(ii) = neta2_30;
neta2_4(ii) = neta2_40;


cota1_11(ii) = cota1_110;
cota1_21(ii) = cota1_210;
cota1_31(ii) = cota1_310;
cota1_41(ii) = cota1_410;

cota2_11(ii) = cota2_110;
cota2_21(ii) = cota2_210;
cota2_31(ii) = cota2_310;
cota2_41(ii) = cota2_410;



gjian1_11(ii) = gjian1_110;
gjian1_12(ii) = gjian1_120;
gjian1_13(ii) = gjian1_130;
gjian1_14(ii) = gjian1_140;
gjian1_15(ii) = gjian1_150;

gjian1_21(ii) = gjian1_210;
gjian1_22(ii) = gjian1_220;
gjian1_23(ii) = gjian1_230;
gjian1_24(ii) = gjian1_240;
gjian1_25(ii) = gjian1_250;

gjian1_31(ii) = gjian1_310;
gjian1_32(ii) = gjian1_320;
gjian1_33(ii) = gjian1_330;
gjian1_34(ii) = gjian1_340;
gjian1_35(ii) = gjian1_350;

gjian1_41(ii) = gjian1_410;
gjian1_42(ii) = gjian1_420;
gjian1_43(ii) = gjian1_430;
gjian1_44(ii) = gjian1_440;
gjian1_45(ii) = gjian1_450;

gjian2_11(ii) = gjian2_110;
gjian2_12(ii) = gjian2_120;
gjian2_13(ii) = gjian2_130;
gjian2_14(ii) = gjian2_140;
gjian2_15(ii) = gjian2_150;

gjian2_21(ii) = gjian2_210;
gjian2_22(ii) = gjian2_220;
gjian2_23(ii) = gjian2_230;
gjian2_24(ii) = gjian2_240;
gjian2_25(ii) = gjian2_250;

gjian2_31(ii) = gjian2_310;
gjian2_32(ii) = gjian2_320;
gjian2_33(ii) = gjian2_330;
gjian2_34(ii) = gjian2_340;
gjian2_35(ii) = gjian2_350;

gjian2_41(ii) = gjian2_410;
gjian2_42(ii) = gjian2_420;
gjian2_43(ii) = gjian2_430;
gjian2_44(ii) = gjian2_440;
gjian2_45(ii) = gjian2_450;


wjian1_11(ii) = wjian1_110;
wjian1_12(ii) = wjian1_120;
wjian1_13(ii) = wjian1_130;
wjian1_14(ii) = wjian1_140;
wjian1_15(ii) = wjian1_150;

wjian1_21(ii) = wjian1_210;
wjian1_22(ii) = wjian1_220;
wjian1_23(ii) = wjian1_230;
wjian1_24(ii) = wjian1_240;
wjian1_25(ii) = wjian1_250;

wjian1_31(ii) = wjian1_310;
wjian1_32(ii) = wjian1_320;
wjian1_33(ii) = wjian1_330;
wjian1_34(ii) = wjian1_340;
wjian1_35(ii) = wjian1_350;

wjian1_41(ii) = wjian2_410;
wjian1_42(ii) = wjian2_420;
wjian1_43(ii) = wjian2_430;
wjian1_44(ii) = wjian2_440;
wjian1_45(ii) = wjian2_450;

wjian2_11(ii) = wjian2_110;
wjian2_12(ii) = wjian2_120;
wjian2_13(ii) = wjian2_130;
wjian2_14(ii) = wjian2_140;
wjian2_15(ii) = wjian2_150;

wjian2_21(ii) = wjian2_210;
wjian2_22(ii) = wjian2_220;
wjian2_23(ii) = wjian2_230;
wjian2_24(ii) = wjian2_240;
wjian2_25(ii) = wjian2_250;

wjian2_31(ii) = wjian2_310;
wjian2_32(ii) = wjian2_320;
wjian2_33(ii) = wjian2_330;
wjian2_34(ii) = wjian2_340;
wjian2_35(ii) = wjian2_350;

wjian2_41(ii) = wjian2_410;
wjian2_42(ii) = wjian2_420;
wjian2_43(ii) = wjian2_430;
wjian2_44(ii) = wjian2_440;
wjian2_45(ii) = wjian2_450;



alph_f1_12(ii) = alph_f1_120;
alph_f1_22(ii) = alph_f1_220;
alph_f1_32(ii) = alph_f1_320;
alph_f1_42(ii) = alph_f1_420;

alph_f2_12(ii) = alph_f2_120;
alph_f2_22(ii) = alph_f2_220;
alph_f2_32(ii) = alph_f2_320;
alph_f2_42(ii) = alph_f2_420;


neta1_0(ii) = neta1_00;
neta2_0(ii) = neta2_00;


%%%%    
A= [0 0 0 0;
    0 0 0 0;
    0 0 0 0;
    0 0 0 0];
b(1)=0;b(2)=0;b(3)=0;b(4)=0;


%动态领导者

B= [0 1;
    -0.1 0];

% B= [0.1 0;
%     0.1 0];

%  eig(B)

y1_r(ii) = neta1_0(ii);
y2_r(ii) = neta2_0(ii);

%%%%%%%状态触发%%%%%%%
count = (ii-1)*ts;
if ii == 1 || abs(x1_11(ii)-xt1_11(ii-1))>bar_x1_11
    xt1_11(ii) = x1_11(ii);
    rtx1_11=[rtx1_11;count];
    rttx1_11=[rttx1_11;count-tkx1_11];
    tkx1_11=count;
else
    xt1_11(ii) = xt1_11(ii-1);
end

if ii == 1 || abs(x1_21(ii)-xt1_21(ii-1))>bar_x1_21
    xt1_21(ii) = x1_21(ii);
    rtx1_21=[rtx1_21;count];
    rttx1_21=[rttx1_21;count-tkx1_21];
    tkx1_21=count;
else
    xt1_21(ii) = xt1_21(ii-1);
end

if ii == 1 || abs(x1_31(ii)-xt1_31(ii-1))>bar_x1_31
    xt1_31(ii) = x1_31(ii);
    rtx1_31=[rtx1_31;count];
    rttx1_31=[rttx1_31;count-tkx1_31];
    tkx1_31=count;
else
    xt1_31(ii) = xt1_31(ii-1);
end

if ii == 1 || abs(x1_41(ii)-xt1_41(ii-1))>bar_x1_41
    xt1_41(ii) = x1_41(ii);
    rtx1_41=[rtx1_41;count];
    rttx1_41=[rttx1_41;count-tkx1_41];
    tkx1_41=count;
else
    xt1_41(ii) = xt1_41(ii-1);
end

%%%%%
if ii == 1 || abs(x2_11(ii)-xt2_11(ii-1))>bar_x2_11
    xt2_11(ii) = x2_11(ii);
    rtx2_11=[rtx2_11;count];
    rttx2_11=[rttx2_11;count-tkx2_11];
    tkx2_11=count;
else
    xt2_11(ii) = xt2_11(ii-1);
end

if ii == 1 || abs(x2_21(ii)-xt2_21(ii-1))>bar_x2_21
    xt2_21(ii) = x2_21(ii);
    rtx2_21=[rtx2_21;count];
    rttx2_21=[rttx2_21;count-tkx2_21];
    tkx2_21=count;
else
    xt2_21(ii) = xt2_21(ii-1);
end

if ii == 1 || abs(x2_31(ii)-xt2_31(ii-1))>bar_x2_31
    xt2_31(ii) = x2_31(ii);
    rtx2_31=[rtx2_31;count];
    rttx2_31=[rttx2_31;count-tkx2_31];
    tkx2_31=count;
else
    xt2_31(ii) = xt2_31(ii-1);
end

if ii == 1 || abs(x2_41(ii)-xt2_41(ii-1))>bar_x2_41
    xt2_41(ii) = x2_41(ii);
    rtx2_41=[rtx2_41;count];
    rttx2_41=[rttx2_41;count-tkx2_41];
    tkx2_41=count;
else
    xt2_41(ii) = xt2_41(ii-1);
end

%%%%%%%%%%%%%%
if ii == 1 || abs(x1_12(ii)-xt1_12(ii-1))>bar_x1_12
    xt1_12(ii) = x1_12(ii);
    rtx1_12=[rtx1_12;count];
    rttx1_12=[rttx1_12;count-tkx1_12];
    tkx1_12=count;
else
    xt1_12(ii) = xt1_12(ii-1);
end

if ii == 1 || abs(x1_22(ii)-xt1_22(ii-1))>bar_x1_22
    xt1_22(ii) = x1_22(ii);
    rtx1_22=[rtx1_22;count];
    rttx1_22=[rttx1_22;count-tkx1_22];
    tkx1_22=count;
else
    xt1_22(ii) = xt1_22(ii-1);
end

if ii == 1 || abs(x1_32(ii)-xt1_32(ii-1))>bar_x1_32
    xt1_32(ii) = x1_32(ii);
    rtx1_32=[rtx1_32;count];
    rttx1_32=[rttx1_32;count-tkx1_32];
    tkx1_32=count;
else
    xt1_32(ii) = xt1_32(ii-1);
end

if ii == 1 || abs(x1_42(ii)-xt1_42(ii-1))>bar_x1_42
    xt1_42(ii) = x1_42(ii);
    rtx1_42=[rtx1_42;count];
    rttx1_42=[rttx1_42;count-tkx1_42];
    tkx1_42=count;
else
    xt1_42(ii) = xt1_42(ii-1);
end

%%%%%
if ii == 1 || abs(x2_12(ii)-xt2_12(ii-1))>bar_x2_12
    xt2_12(ii) = x2_12(ii);
    rtx2_12=[rtx2_12;count];
    rttx2_12=[rttx2_12;count-tkx2_12];
    tkx2_12=count;
else
    xt2_12(ii) = xt2_12(ii-1);
end

if ii == 1 || abs(x2_22(ii)-xt2_22(ii-1))>bar_x2_22
    xt2_22(ii) = x2_22(ii);
    rtx2_22=[rtx2_22;count];
    rttx2_22=[rttx2_22;count-tkx2_22];
    tkx2_22=count;
else
    xt2_22(ii) = xt2_22(ii-1);
end

if ii == 1 || abs(x2_32(ii)-xt2_32(ii-1))>bar_x2_32
    xt2_32(ii) = x2_32(ii);
    rtx2_32=[rtx2_32;count];
    rttx2_32=[rttx2_32;count-tkx2_32];
    tkx2_32=count;
else
    xt2_32(ii) = xt2_32(ii-1);
end

if ii == 1 || abs(x2_42(ii)-xt2_42(ii-1))>bar_x2_42
    xt2_42(ii) = x2_42(ii);
    rtx2_42=[rtx2_42;count];
    rttx2_42=[rttx2_42;count-tkx2_42];
    tkx2_42=count;
else
    xt2_42(ii) = xt2_42(ii-1);
end

  %神经网络
    e1_11(1)=exp(-(xt1_11(ii)+2)^2/2)*exp(-(xt2_11(ii)+2)^2/2); 
    e1_11(2)=exp(-(xt1_11(ii)+1)^2/2)*exp(-(xt2_11(ii)+1)^2/2);
    e1_11(3)=exp(-(xt1_11(ii))^2/2)*exp(-(xt2_11(ii))^2/2);
    e1_11(4)=exp(-(xt1_11(ii)-1)^2/2)*exp(-(xt2_11(ii)-1)^2/2);
    e1_11(5)=exp(-(xt1_11(ii)-2)^2/2)*exp(-(xt2_11(ii)-2)^2/2);
    
    e1_21(1)=exp(-(xt1_21(ii)+2)^2/2)*exp(-(xt2_21(ii)+2)^2/2); 
    e1_21(2)=exp(-(xt1_21(ii)+1)^2/2)*exp(-(xt2_21(ii)+1)^2/2);
    e1_21(3)=exp(-(xt1_21(ii))^2/2)*exp(-(xt2_21(ii))^2/2);
    e1_21(4)=exp(-(xt1_21(ii)-1)^2/2)*exp(-(xt2_21(ii)-1)^2/2);
    e1_21(5)=exp(-(xt1_21(ii)-2)^2/2)*exp(-(xt2_21(ii)-2)^2/2);
    
    e1_31(1)=exp(-(xt1_31(ii)+2)^2/2)*exp(-(xt2_31(ii)+2)^2/2); 
    e1_31(2)=exp(-(xt1_31(ii)+1)^2/2)*exp(-(xt2_31(ii)+1)^2/2);
    e1_31(3)=exp(-(xt1_31(ii))^2/2)*exp(-(xt2_31(ii))^2/2);
    e1_31(4)=exp(-(xt1_31(ii)-1)^2/2)*exp(-(xt2_31(ii)-1)^2/2);
    e1_31(5)=exp(-(xt1_31(ii)-2)^2/2)*exp(-(xt2_31(ii)-2)^2/2);

    e1_41(1)=exp(-(xt1_41(ii)+2)^2/2)*exp(-(xt2_41(ii)+2)^2/2); 
    e1_41(2)=exp(-(xt1_41(ii)+1)^2/2)*exp(-(xt2_41(ii)+1)^2/2);
    e1_41(3)=exp(-(xt1_41(ii))^2/2)*exp(-(xt2_41(ii))^2/2);
    e1_41(4)=exp(-(xt1_41(ii)-1)^2/2)*exp(-(xt2_41(ii)-1)^2/2);
    e1_41(5)=exp(-(xt1_41(ii)-2)^2/2)*exp(-(xt2_41(ii)-2)^2/2);

    fai1_11=[e1_11(1);e1_11(2);e1_11(3);e1_11(4);e1_11(5)];
    fai1_21=[e1_21(1);e1_21(2);e1_21(3);e1_21(4);e1_21(5)];
    fai1_31=[e1_31(1);e1_31(2);e1_31(3);e1_31(4);e1_31(5)];
    fai1_41=[e1_41(1);e1_41(2);e1_41(3);e1_41(4);e1_41(5)];
    
 
    
    %%%%%%%%%%%
    e1_12(1)=exp(-(xt1_11(ii)+2)^2/2)*exp(-(xt1_12(ii)+2)^2/2)*exp(-(xt2_11(ii)+2)^2/2)*exp(-(xt2_12(ii)+2)^2/2); 
    e1_12(2)=exp(-(xt1_11(ii)+1)^2/2)*exp(-(xt1_12(ii)+1)^2/2)*exp(-(xt2_11(ii)+1)^2/2)*exp(-(xt2_12(ii)+1)^2/2);
    e1_12(3)=exp(-(xt1_11(ii))^2/2)*exp(-(xt1_12(ii))^2/2)*exp(-(xt2_11(ii))^2/2)*exp(-(xt2_12(ii))^2/2);
    e1_12(4)=exp(-(xt1_11(ii)-1)^2/2)*exp(-(xt1_12(ii)-1)^2/2)*exp(-(xt2_11(ii)-1)^2/2)*exp(-(xt2_12(ii)-1)^2/2);
    e1_12(5)=exp(-(xt1_11(ii)-2)^2/2)*exp(-(xt1_12(ii)-2)^2/2)*exp(-(xt2_11(ii)-2)^2/2)*exp(-(xt2_12(ii)-2)^2/2);

    e1_22(1)=exp(-(xt1_21(ii)+2)^2/2)*exp(-(xt1_22(ii)+2)^2/2)*exp(-(xt2_21(ii)+2)^2/2)*exp(-(xt2_22(ii)+2)^2/2); 
    e1_22(2)=exp(-(xt1_21(ii)+1)^2/2)*exp(-(xt1_22(ii)+1)^2/2)*exp(-(xt2_21(ii)+1)^2/2)*exp(-(xt2_22(ii)+1)^2/2);
    e1_22(3)=exp(-(xt1_21(ii))^2/2)*exp(-(xt1_22(ii))^2/2)*exp(-(xt2_21(ii))^2/2)*exp(-(xt2_22(ii))^2/2);
    e1_22(4)=exp(-(xt1_21(ii)-1)^2/2)*exp(-(xt1_22(ii)-1)^2/2)*exp(-(xt2_21(ii)-1)^2/2)*exp(-(xt2_22(ii)-1)^2/2);
    e1_22(5)=exp(-(xt1_21(ii)-2)^2/2)*exp(-(xt1_22(ii)-2)^2/2)*exp(-(xt2_21(ii)-2)^2/2)*exp(-(xt2_22(ii)-2)^2/2);

    e1_32(1)=exp(-(xt1_31(ii)+2)^2/2)*exp(-(xt1_32(ii)+2)^2/2)*exp(-(xt2_31(ii)+2)^2/2)*exp(-(xt2_32(ii)+2)^2/2); 
    e1_32(2)=exp(-(xt1_31(ii)+1)^2/2)*exp(-(xt1_32(ii)+1)^2/2)*exp(-(xt2_31(ii)+1)^2/2)*exp(-(xt2_32(ii)+1)^2/2);
    e1_32(3)=exp(-(xt1_31(ii))^2/2)*exp(-(xt1_32(ii))^2/2)*exp(-(xt2_31(ii))^2/2)*exp(-(xt2_32(ii))^2/2);
    e1_32(4)=exp(-(xt1_31(ii)-1)^2/2)*exp(-(xt1_32(ii)-1)^2/2)*exp(-(xt2_31(ii)-1)^2/2)*exp(-(xt2_32(ii)-1)^2/2);
    e1_32(5)=exp(-(xt1_31(ii)-2)^2/2)*exp(-(xt1_32(ii)-2)^2/2)*exp(-(xt2_31(ii)-2)^2/2)*exp(-(xt2_32(ii)-2)^2/2);
    
    e1_42(1)=exp(-(xt1_41(ii)+2)^2/2)*exp(-(xt1_42(ii)+2)^2/2)*exp(-(xt2_41(ii)+2)^2/2)*exp(-(xt2_42(ii)+2)^2/2); 
    e1_42(2)=exp(-(xt1_41(ii)+1)^2/2)*exp(-(xt1_42(ii)+1)^2/2)*exp(-(xt2_41(ii)+1)^2/2)*exp(-(xt2_42(ii)+1)^2/2);
    e1_42(3)=exp(-(xt1_41(ii))^2/2)*exp(-(xt1_42(ii))^2/2)*exp(-(xt2_41(ii))^2/2)*exp(-(xt2_42(ii))^2/2);
    e1_42(4)=exp(-(xt1_41(ii)-1)^2/2)*exp(-(xt1_42(ii)-1)^2/2)*exp(-(xt2_41(ii)-1)^2/2)*exp(-(xt2_42(ii)-1)^2/2);
    e1_42(5)=exp(-(xt1_41(ii)-2)^2/2)*exp(-(xt1_42(ii)-2)^2/2)*exp(-(xt2_41(ii)-2)^2/2)*exp(-(xt2_42(ii)-2)^2/2);
    
    
    fai1_12=[e1_12(1);e1_12(2);e1_12(3);e1_12(4);e1_12(5)];
    fai1_22=[e1_22(1);e1_22(2);e1_22(3);e1_22(4);e1_22(5)];
    fai1_32=[e1_32(1);e1_32(2);e1_32(3);e1_32(4);e1_32(5)];
    fai1_42=[e1_42(1);e1_42(2);e1_42(3);e1_42(4);e1_42(5)];
    
    

%队形之间的距离
n1_1 = 0.05*sin(0.1*ii*ts);
n1_2 = 0.05*sin(0.1*ii*ts);
n1_3 = 0.05*sin(0.1*ii*ts);
n1_4 = 0.05*sin(0.1*ii*ts);

n2_1 = -0.4-0.05*cos(0.1*ii*ts);
n2_2 = -0.2-0.05*cos(0.1*ii*ts);
n2_3 = 0.2-0.05*cos(0.1*ii*ts);
n2_4 = 0.4-0.05*cos(0.1*ii*ts);


%%%导数
dn1_1 = 0.005*cos(0.1*ii*ts);
dn1_2 = 0.005*cos(0.1*ii*ts);
dn1_3 = 0.005*cos(0.1*ii*ts);
dn1_4 = 0.005*cos(0.1*ii*ts);

dn2_1 = 0.005*sin(0.1*ii*ts);
dn2_2 = 0.005*sin(0.1*ii*ts);
dn2_3 = 0.005*sin(0.1*ii*ts);
dn2_4 = 0.005*sin(0.1*ii*ts);


%坐标变换
Z1_11(ii) = xt1_11(ii)-neta1_1(ii);
Z1_21(ii) = xt1_21(ii)-neta1_2(ii);
Z1_31(ii) = xt1_31(ii)-neta1_3(ii);
Z1_41(ii) = xt1_41(ii)-neta1_4(ii);

Z2_11(ii) = xt2_11(ii)-neta2_1(ii);
Z2_21(ii) = xt2_21(ii)-neta2_2(ii);
Z2_31(ii) = xt2_31(ii)-neta2_3(ii);
Z2_41(ii) = xt2_41(ii)-neta2_4(ii);


%%%
Z1_12(ii)=xt1_12(ii)-alph_f1_12(ii);
Z1_22(ii)=xt1_22(ii)-alph_f1_22(ii);
Z1_32(ii)=xt1_32(ii)-alph_f1_32(ii);
Z1_42(ii)=xt1_42(ii)-alph_f1_42(ii);

Z2_12(ii)=xt2_12(ii)-alph_f2_12(ii);
Z2_22(ii)=xt2_22(ii)-alph_f2_22(ii);
Z2_32(ii)=xt2_32(ii)-alph_f2_32(ii);
Z2_42(ii)=xt2_42(ii)-alph_f2_42(ii);

%滤波器的事件触发
if ii == 1 || abs(alph_f1_12(ii)-alph_tf1_12(ii-1))>bar_alph_f1_12
    alph_tf1_12(ii) = alph_f1_12(ii);
    rta1_1=[rta1_1;count];
    rtta1_1=[rtta1_1;count-tka1_1];
    tka1_1=count;
else
    alph_tf1_12(ii) = alph_tf1_12(ii-1);
end

if ii == 1 || abs(alph_f1_22(ii)-alph_tf1_22(ii-1))>bar_alph_f1_22
    alph_tf1_22(ii) = alph_f1_22(ii);
    rta1_2=[rta1_2;count];
    rtta1_2=[rtta1_2;count-tka1_2];
    tka1_2=count;
else
    alph_tf1_22(ii) = alph_tf1_22(ii-1);
end

if ii == 1 || abs(alph_f1_32(ii)-alph_tf1_32(ii-1))>bar_alph_f1_32
    alph_tf1_32(ii) = alph_f1_32(ii);
    rta1_3=[rta1_3;count];
    rtta1_3=[rtta1_3;count-tka1_3];
    tka1_3=count;
else
    alph_tf1_32(ii) = alph_tf1_32(ii-1);
end

if ii == 1 || abs(alph_f1_42(ii)-alph_tf1_42(ii-1))>bar_alph_f1_42
    alph_tf1_42(ii) = alph_f1_42(ii);
    rta1_4=[rta1_4;count];
    rtta1_4=[rtta1_4;count-tka1_4];
    tka1_4=count;
else
    alph_tf1_42(ii) = alph_tf1_42(ii-1);
end

%%%%%%
if ii == 1 || abs(alph_f2_12(ii)-alph_tf2_12(ii-1))>bar_alph_f2_12
    alph_tf2_12(ii) = alph_f2_12(ii);
    rta2_1=[rta2_1;count];
    rtta2_1=[rtta2_1;count-tka2_1];
    tka2_1=count;
else
    alph_tf2_12(ii) = alph_tf2_12(ii-1);
end

if ii == 1 || abs(alph_f2_22(ii)-alph_tf2_22(ii-1))>bar_alph_f2_22
    alph_tf2_22(ii) = alph_f2_22(ii);
    rta2_2=[rta2_2;count];
    rtta2_2=[rtta2_2;count-tka2_2];
    tka2_2=count;
else
    alph_tf2_22(ii) = alph_tf2_22(ii-1);
end

if ii == 1 || abs(alph_f2_32(ii)-alph_tf2_32(ii-1))>bar_alph_f2_32
    alph_tf2_32(ii) = alph_f2_32(ii);
    rta2_3=[rta2_3;count];
    rtta2_3=[rtta2_3;count-tka2_3];
    tka2_3=count;
else
    alph_tf2_32(ii) = alph_tf2_32(ii-1);
end

if ii == 1 || abs(alph_f2_42(ii)-alph_tf2_42(ii-1))>bar_alph_f2_42
    alph_tf2_42(ii) = alph_f2_42(ii);
    rta2_4=[rta2_4;count];
    rtta2_4=[rtta2_4;count-tka2_4];
    tka2_4=count;
else
    alph_tf2_42(ii) = alph_tf2_42(ii-1);
end

%虚拟控制器1
R1_1(ii) = dn1_1-(B(1,1)*n1_1+B(1,2)*n2_1);
R2_1(ii) = dn2_1-(B(2,1)*n1_1+B(2,2)*n2_1);

R1_2(ii) = dn1_2-(B(1,1)*n1_2+B(1,2)*n2_2);
R2_2(ii) = dn2_2-(B(2,1)*n1_2+B(2,2)*n2_2);

R1_3(ii) = dn1_3-(B(1,1)*n1_3+B(1,2)*n2_3);
R2_3(ii) = dn2_3-(B(2,1)*n1_3+B(2,2)*n2_3);

R1_4(ii) = dn1_4-(B(1,1)*n1_4+B(1,2)*n2_4);
R2_4(ii) = dn2_4-(B(2,1)*n1_4+B(2,2)*n2_4);


alph1_11(ii)=-c1_11*Z1_11(ii)-2*Z1_11(ii)-derta1*neta1_1(ii)+R1_1(ii)+B(1,1)*cota1_11(ii)+B(1,2)*cota2_11(ii)-([gjian1_11(ii) gjian1_12(ii) gjian1_13(ii) gjian1_14(ii) gjian1_15(ii)]*fai1_11);
alph2_11(ii)=-c2_11*Z2_11(ii)-2*Z2_11(ii)-derta1*neta2_1(ii)+R2_1(ii)+B(2,1)*cota1_11(ii)+B(2,2)*cota2_11(ii)-([gjian2_11(ii) gjian2_12(ii) gjian2_13(ii) gjian2_14(ii) gjian2_15(ii)]*fai1_11);

alph1_21(ii)=-c1_21*Z1_21(ii)-2*Z1_21(ii)-derta2*neta1_2(ii)+R1_2(ii)+B(1,1)*cota1_21(ii)+B(1,2)*cota2_21(ii)-([gjian1_21(ii) gjian1_22(ii) gjian1_23(ii) gjian1_24(ii) gjian1_25(ii)]*fai1_21);
alph2_21(ii)=-c2_21*Z2_21(ii)-2*Z2_21(ii)-derta2*neta2_2(ii)+R2_2(ii)+B(2,1)*cota1_21(ii)+B(2,2)*cota2_21(ii)-([gjian2_21(ii) gjian2_22(ii) gjian2_23(ii) gjian2_24(ii) gjian2_25(ii)]*fai1_21);

alph1_31(ii)=-c1_31*Z1_31(ii)-2*Z1_31(ii)-derta3*neta1_3(ii)+R1_3(ii)+B(1,1)*cota1_31(ii)+B(1,2)*cota2_31(ii)-([gjian1_31(ii) gjian1_32(ii) gjian1_33(ii) gjian1_34(ii) gjian1_35(ii)]*fai1_31);
alph2_31(ii)=-c2_31*Z2_31(ii)-2*Z2_31(ii)-derta3*neta2_3(ii)+R2_3(ii)+B(2,1)*cota1_31(ii)+B(2,2)*cota2_31(ii)-([gjian2_31(ii) gjian2_32(ii) gjian2_33(ii) gjian2_34(ii) gjian2_35(ii)]*fai1_31);

alph1_41(ii)=-c1_41*Z1_41(ii)-2*Z1_41(ii)-derta4*neta1_4(ii)+R1_4(ii)+B(1,1)*cota1_41(ii)+B(1,2)*cota2_41(ii)-([gjian1_41(ii) gjian1_42(ii) gjian1_43(ii) gjian1_44(ii) gjian1_45(ii)]*fai1_41);
alph2_41(ii)=-c2_41*Z2_41(ii)-2*Z2_41(ii)-derta4*neta2_4(ii)+R2_4(ii)+B(2,1)*cota1_41(ii)+B(2,2)*cota2_41(ii)-([gjian2_41(ii) gjian2_42(ii) gjian2_43(ii) gjian2_44(ii) gjian2_45(ii)]*fai1_41);

%一阶滤波器

w1_12(ii) =alph_tf1_12(ii)-alph1_11(ii);
dalph_f1_12(ii) = -w1_12(ii)/k1_1;
w1_22(ii) =alph_tf1_22(ii)-alph1_21(ii);
dalph_f1_22(ii) = -w1_22(ii)/k1_2;
w1_32(ii) =alph_tf1_32(ii)-alph1_31(ii);
dalph_f1_32(ii) = -w1_32(ii)/k1_3;
w1_42(ii) =alph_tf1_42(ii)-alph1_41(ii);
dalph_f1_42(ii) = -w1_42(ii)/k1_4;

w2_12(ii) =alph_tf2_12(ii)-alph2_11(ii);
dalph_f2_12(ii) = -w2_12(ii)/k2_1;
w2_22(ii) =alph_tf2_22(ii)-alph2_21(ii);
dalph_f2_22(ii) = -w2_22(ii)/k2_2;
w2_32(ii) =alph_tf2_32(ii)-alph2_31(ii);
dalph_f2_32(ii) = -w2_32(ii)/k2_3;
w2_42(ii) =alph_tf2_42(ii)-alph2_41(ii);
dalph_f2_42(ii) = -w2_42(ii)/k2_4;


%最终控制器
u1_1(ii)=-c1_12*Z1_12(ii)-2*Z1_12(ii)+dalph_f1_12(ii)-([wjian1_11(ii) wjian1_12(ii) wjian1_13(ii) wjian1_14(ii) wjian1_15(ii)]*fai1_12);
u1_2(ii)=-c1_22*Z1_22(ii)-2*Z1_22(ii)+dalph_f1_22(ii)-([wjian1_21(ii) wjian1_22(ii) wjian1_23(ii) wjian1_24(ii) wjian1_25(ii)]*fai1_22);
u1_3(ii)=-c1_32*Z1_32(ii)-2*Z1_32(ii)+dalph_f1_32(ii)-([wjian1_31(ii) wjian1_32(ii) wjian1_33(ii) wjian1_34(ii) wjian1_35(ii)]*fai1_32);
u1_4(ii)=-c1_42*Z1_42(ii)-2*Z1_42(ii)+dalph_f1_42(ii)-([wjian1_41(ii) wjian1_42(ii) wjian1_43(ii) wjian1_44(ii) wjian1_45(ii)]*fai1_42);

u2_1(ii)=-c2_12*Z2_12(ii)-2*Z2_12(ii)+dalph_f2_12(ii)-([wjian2_11(ii) wjian2_12(ii) wjian2_13(ii) wjian2_14(ii) wjian2_15(ii)]*fai1_12);
u2_2(ii)=-c2_22*Z2_22(ii)-2*Z2_22(ii)+dalph_f2_22(ii)-([wjian2_21(ii) wjian2_22(ii) wjian2_23(ii) wjian2_24(ii) wjian2_25(ii)]*fai1_22);
u2_3(ii)=-c2_32*Z2_32(ii)-2*Z2_32(ii)+dalph_f2_32(ii)-([wjian2_31(ii) wjian2_32(ii) wjian2_33(ii) wjian2_34(ii) wjian2_35(ii)]*fai1_32);
u2_4(ii)=-c2_42*Z2_42(ii)-2*Z2_42(ii)+dalph_f2_42(ii)-([wjian2_41(ii) wjian2_42(ii) wjian2_43(ii) wjian2_44(ii) wjian2_45(ii)]*fai1_42);

%饱和参数
u1_M1(ii) = up1_1;
u1_m1(ii) = down1_1; 
u2_M1(ii) = up2_1;
u2_m1(ii) = down2_1; 

u1_M2(ii) = up1_2;
u1_m2(ii) = down1_2; 
u2_M2(ii) = up2_2;
u2_m2(ii) = down2_2; 

u1_M3(ii) = up1_3;
u1_m3(ii) = down1_3; 
u2_M3(ii) = up2_3;
u2_m3(ii) = down2_3; 

u1_M4(ii) = up1_4;
u1_m4(ii) = down1_4; 
u2_M4(ii) = up2_4;
u2_m4(ii) = down2_4;

%饱和模型
if u1_1(ii)>=u1_M1(ii)
    Su1_1(ii) = u1_M1(ii);
elseif u1_1(ii) <= -u1_m1(ii)
    Su1_1(ii) = -u1_m1(ii);
else
    Su1_1(ii) = u1_1(ii);
end
if u2_1(ii)>=u2_M1(ii)
    Su2_1(ii) = u2_M1(ii);
elseif u2_1(ii) <= -u2_m1(ii)
    Su2_1(ii) = -u2_m1(ii);
else
    Su2_1(ii) = u2_1(ii);
end

if u1_2(ii)>=u1_M2(ii)
    Su1_2(ii) = u1_M2(ii);
elseif u1_2(ii) <= -u1_m2(ii)
    Su1_2(ii) = -u1_m2(ii);
else
    Su1_2(ii) = u1_2(ii);
end
if u2_2(ii)>=u2_M2(ii)
    Su2_2(ii) = u2_M2(ii);
elseif u2_2(ii) <= -u2_m2(ii)
    Su2_2(ii) = -u2_m2(ii);
else
    Su2_2(ii) = u2_2(ii);
end

if u1_3(ii)>=u1_M3(ii)
    Su1_3(ii) = u1_M3(ii);
elseif u1_3(ii) <= -u1_m3(ii)
    Su1_3(ii) = -u1_m3(ii);
else
    Su1_3(ii) = u1_3(ii);
end
if u2_3(ii)>=u2_M3(ii)
    Su2_3(ii) = u2_M3(ii);
elseif u2_3(ii) <= -u2_m3(ii)
    Su2_3(ii) = -u2_m3(ii);
else
    Su2_3(ii) = u2_3(ii);
end

if u1_4(ii)>=u1_M4(ii)
    Su1_4(ii) = u1_M4(ii);
elseif u1_4(ii) <= -u1_m4(ii)
    Su1_4(ii) = -u1_m4(ii);
else
    Su1_4(ii) = u1_4(ii);
end
if u2_4(ii)>=u2_M4(ii)
    Su2_4(ii) = u2_M4(ii);
elseif u2_4(ii) <= -u2_m4(ii)
    Su2_4(ii) = -u2_m4(ii);
else
    Su2_4(ii) = u2_4(ii);
end

    else      
    [t,z]=ode45(@dznt_12_s,[(ii-1)*ts ii*ts],[x1_110; x1_210; x1_310; x1_410; 
    x1_120; x1_220; x1_320; x1_420;
    x2_110; x2_210; x2_310; x2_410; 
    x2_120; x2_220; x2_320; x2_420;  
    neta1_10; neta1_20; neta1_30; neta1_40;
    neta2_10; neta2_20; neta2_30; neta2_40;
    cota1_110; cota1_210; cota1_310; cota1_410;
    cota2_110; cota2_210; cota2_310; cota2_410;
    gjian1_110;gjian1_120;gjian1_130;gjian1_140;gjian1_150;
    gjian1_210;gjian1_220;gjian1_230;gjian1_240;gjian1_250;
    gjian1_310;gjian1_320;gjian1_330;gjian1_340;gjian1_350;
    gjian1_410;gjian1_420;gjian1_430;gjian1_440;gjian1_450;
    gjian2_110;gjian2_120;gjian2_130;gjian2_140;gjian2_150;
    gjian2_210;gjian2_220;gjian2_230;gjian2_240;gjian2_250;
    gjian2_310;gjian2_320;gjian2_330;gjian2_340;gjian2_350;
    gjian2_410;gjian2_420;gjian2_430;gjian2_440;gjian2_450;
    wjian1_110;wjian1_120;wjian1_130;wjian1_140;wjian1_150;
    wjian1_210;wjian1_220;wjian1_230;wjian1_240;wjian1_250;
    wjian1_310;wjian1_320;wjian1_330;wjian1_340;wjian1_350;
    wjian1_410;wjian1_420;wjian1_430;wjian1_440;wjian1_450;
    wjian2_110;wjian2_120;wjian2_130;wjian2_140;wjian2_150;
    wjian2_210;wjian2_220;wjian2_230;wjian2_240;wjian2_250;
    wjian2_310;wjian2_320;wjian2_330;wjian2_340;wjian2_350;
    wjian2_410;wjian2_420;wjian2_430;wjian2_440;wjian2_450;
    alph_f1_120; alph_f1_220; alph_f1_320; alph_f1_420;
    alph_f2_120; alph_f2_220; alph_f2_320; alph_f2_420;
    neta1_00; neta2_00;
    ],[],K);
    
    [m,n]=size(z);%获取矩阵的行数和列数

    ii
    
x1_110	=	z(m,1);
x1_210	=	z(m,2);
x1_310	=	z(m,3);
x1_410	=	z(m,4);

x1_120	=	z(m,5);
x1_220	=	z(m,6);
x1_320	=	z(m,7);
x1_420	=	z(m,8);


x2_110	=	z(m,9);
x2_210	=	z(m,10);
x2_310	=	z(m,11);
x2_410	=	z(m,12);

x2_120	=	z(m,13);
x2_220	=	z(m,14);
x2_320	=	z(m,15);
x2_420	=	z(m,16);

neta1_10 = z(m,17);
neta1_20 = z(m,18);
neta1_30 = z(m,19);
neta1_40 = z(m,20);

neta2_10 = z(m,21);
neta2_20 = z(m,22);
neta2_30 = z(m,23);
neta2_40 = z(m,24);


cota1_110 = z(m,25);
cota1_210 = z(m,26);
cota1_310 = z(m,27);
cota1_410 = z(m,28);

cota2_110 = z(m,29);
cota2_210 = z(m,30);
cota2_310 = z(m,31);
cota2_410 = z(m,32);


gjian1_110 = z(m,33);
gjian1_120 = z(m,34);
gjian1_130 = z(m,35);
gjian1_140 = z(m,36);
gjian1_150 = z(m,37);

gjian1_210 = z(m,38);
gjian1_220 = z(m,39);
gjian1_230 = z(m,40);
gjian1_240 = z(m,41);
gjian1_250 = z(m,42);
    
gjian1_310 = z(m,43);
gjian1_320 = z(m,44);
gjian1_330 = z(m,45);
gjian1_340 = z(m,46);
gjian1_350 = z(m,47);  

gjian1_410 = z(m,48);
gjian1_420 = z(m,49);
gjian1_430 = z(m,50);
gjian1_440 = z(m,51);
gjian1_450 = z(m,52);

gjian2_110 = z(m,53);
gjian2_120 = z(m,54);
gjian2_130 = z(m,55);
gjian2_140 = z(m,56);
gjian2_150 = z(m,57);

gjian2_210 = z(m,58);
gjian2_220 = z(m,59);
gjian2_230 = z(m,60);
gjian2_240 = z(m,61);
gjian2_250 = z(m,62);
    
gjian2_310 = z(m,63);
gjian2_320 = z(m,64);
gjian2_330 = z(m,65);
gjian2_340 = z(m,66);
gjian2_350 = z(m,67);  

gjian2_410 = z(m,68);
gjian2_420 = z(m,69);
gjian2_430 = z(m,70);
gjian2_440 = z(m,71);
gjian2_450 = z(m,72);


wjian1_110 = z(m,73);
wjian1_120 = z(m,74);
wjian1_130 = z(m,75);
wjian1_140 = z(m,76);
wjian1_150 = z(m,77);

wjian1_210 = z(m,78);
wjian1_220 = z(m,79);
wjian1_230 = z(m,80);
wjian1_240 = z(m,81);
wjian1_250 = z(m,82);
    
wjian1_310 = z(m,83);
wjian1_320 = z(m,84);
wjian1_330 = z(m,85);
wjian1_340 = z(m,86);
wjian1_350 = z(m,87);  

wjian1_410 = z(m,88);
wjian1_420 = z(m,89);
wjian1_430 = z(m,90);
wjian1_440 = z(m,91);
wjian1_450 = z(m,92);

wjian2_110 = z(m,93);
wjian2_120 = z(m,94);
wjian2_130 = z(m,95);
wjian2_140 = z(m,96);
wjian2_150 = z(m,97);

wjian2_210 = z(m,98);
wjian2_220 = z(m,99);
wjian2_230 = z(m,100);
wjian2_240 = z(m,101);
wjian2_250 = z(m,102);
    
wjian2_310 = z(m,103);
wjian2_320 = z(m,104);
wjian2_330 = z(m,105);
wjian2_340 = z(m,106);
wjian2_350 = z(m,107);  

wjian2_410 = z(m,108);
wjian2_420 = z(m,109);
wjian2_430 = z(m,110);
wjian2_440 = z(m,111);
wjian2_450 = z(m,112);


alph_f1_120 = z(m,113);
alph_f1_220 = z(m,114);
alph_f1_320 = z(m,115);
alph_f1_420 = z(m,116);

alph_f2_120 = z(m,117);
alph_f2_220 = z(m,118);
alph_f2_320 = z(m,119);
alph_f2_420 = z(m,120);


neta1_00 = z(m,121);
neta2_00 = z(m,122);

%
x1_11(ii)    =   x1_110;
x1_21(ii)    =   x1_210;
x1_31(ii)    =   x1_310;
x1_41(ii)    =   x1_410;

x1_12(ii)    =   x1_120;
x1_22(ii)    =   x1_220;
x1_32(ii)    =   x1_320;
x1_42(ii)    =   x1_420;

x2_11(ii)    =   x2_110;
x2_21(ii)    =   x2_210;
x2_31(ii)    =   x2_310;
x2_41(ii)    =   x2_410;

x2_12(ii)    =   x2_120;
x2_22(ii)    =   x2_220;
x2_32(ii)    =   x2_320;
x2_42(ii)    =   x2_420;


neta1_1(ii) = neta1_10;
neta1_2(ii) = neta1_20;
neta1_3(ii) = neta1_30;
neta1_4(ii) = neta1_40;

neta2_1(ii) = neta2_10;
neta2_2(ii) = neta2_20;
neta2_3(ii) = neta2_30;
neta2_4(ii) = neta2_40;


cota1_11(ii) = cota1_110;
cota1_21(ii) = cota1_210;
cota1_31(ii) = cota1_310;
cota1_41(ii) = cota1_410;

cota2_11(ii) = cota2_110;
cota2_21(ii) = cota2_210;
cota2_31(ii) = cota2_310;
cota2_41(ii) = cota2_410;



gjian1_11(ii) = gjian1_110;
gjian1_12(ii) = gjian1_120;
gjian1_13(ii) = gjian1_130;
gjian1_14(ii) = gjian1_140;
gjian1_15(ii) = gjian1_150;

gjian1_21(ii) = gjian1_210;
gjian1_22(ii) = gjian1_220;
gjian1_23(ii) = gjian1_230;
gjian1_24(ii) = gjian1_240;
gjian1_25(ii) = gjian1_250;

gjian1_31(ii) = gjian1_310;
gjian1_32(ii) = gjian1_320;
gjian1_33(ii) = gjian1_330;
gjian1_34(ii) = gjian1_340;
gjian1_35(ii) = gjian1_350;

gjian1_41(ii) = gjian1_410;
gjian1_42(ii) = gjian1_420;
gjian1_43(ii) = gjian1_430;
gjian1_44(ii) = gjian1_440;
gjian1_45(ii) = gjian1_450;

gjian2_11(ii) = gjian2_110;
gjian2_12(ii) = gjian2_120;
gjian2_13(ii) = gjian2_130;
gjian2_14(ii) = gjian2_140;
gjian2_15(ii) = gjian2_150;

gjian2_21(ii) = gjian2_210;
gjian2_22(ii) = gjian2_220;
gjian2_23(ii) = gjian2_230;
gjian2_24(ii) = gjian2_240;
gjian2_25(ii) = gjian2_250;

gjian2_31(ii) = gjian2_310;
gjian2_32(ii) = gjian2_320;
gjian2_33(ii) = gjian2_330;
gjian2_34(ii) = gjian2_340;
gjian2_35(ii) = gjian2_350;

gjian2_41(ii) = gjian2_410;
gjian2_42(ii) = gjian2_420;
gjian2_43(ii) = gjian2_430;
gjian2_44(ii) = gjian2_440;
gjian2_45(ii) = gjian2_450;


wjian1_11(ii) = wjian1_110;
wjian1_12(ii) = wjian1_120;
wjian1_13(ii) = wjian1_130;
wjian1_14(ii) = wjian1_140;
wjian1_15(ii) = wjian1_150;

wjian1_21(ii) = wjian1_210;
wjian1_22(ii) = wjian1_220;
wjian1_23(ii) = wjian1_230;
wjian1_24(ii) = wjian1_240;
wjian1_25(ii) = wjian1_250;

wjian1_31(ii) = wjian1_310;
wjian1_32(ii) = wjian1_320;
wjian1_33(ii) = wjian1_330;
wjian1_34(ii) = wjian1_340;
wjian1_35(ii) = wjian1_350;

wjian1_41(ii) = wjian2_410;
wjian1_42(ii) = wjian2_420;
wjian1_43(ii) = wjian2_430;
wjian1_44(ii) = wjian2_440;
wjian1_45(ii) = wjian2_450;

wjian2_11(ii) = wjian2_110;
wjian2_12(ii) = wjian2_120;
wjian2_13(ii) = wjian2_130;
wjian2_14(ii) = wjian2_140;
wjian2_15(ii) = wjian2_150;

wjian2_21(ii) = wjian2_210;
wjian2_22(ii) = wjian2_220;
wjian2_23(ii) = wjian2_230;
wjian2_24(ii) = wjian2_240;
wjian2_25(ii) = wjian2_250;

wjian2_31(ii) = wjian2_310;
wjian2_32(ii) = wjian2_320;
wjian2_33(ii) = wjian2_330;
wjian2_34(ii) = wjian2_340;
wjian2_35(ii) = wjian2_350;

wjian2_41(ii) = wjian2_410;
wjian2_42(ii) = wjian2_420;
wjian2_43(ii) = wjian2_430;
wjian2_44(ii) = wjian2_440;
wjian2_45(ii) = wjian2_450;



alph_f1_12(ii) = alph_f1_120;
alph_f1_22(ii) = alph_f1_220;
alph_f1_32(ii) = alph_f1_320;
alph_f1_42(ii) = alph_f1_420;

alph_f2_12(ii) = alph_f2_120;
alph_f2_22(ii) = alph_f2_220;
alph_f2_32(ii) = alph_f2_320;
alph_f2_42(ii) = alph_f2_420;


neta1_0(ii) = neta1_00;
neta2_0(ii) = neta2_00;


%%%%  
 A= [0 1 0 0;
    1 0 1 0;
    0 1 0 1;
    0 0 1 0];

b(1)=0;b(2)=1;b(3)=1;b(4)=0; 

%动态领导者

B= [0 1;
    -0.1 0];

% B= [0.1 0;
%     0.1 0];

% eig(B)

y1_r(ii) = neta1_0(ii);
y2_r(ii) = neta2_0(ii);

%%%%%%%状态触发%%%%%%%
count = (ii-1)*ts;
if ii == 1 || abs(x1_11(ii)-xt1_11(ii-1))>bar_x1_11
    xt1_11(ii) = x1_11(ii);
    rtx1_11=[rtx1_11;count];
    rttx1_11=[rttx1_11;count-tkx1_11];
    tkx1_11=count;
else
    xt1_11(ii) = xt1_11(ii-1);
end

if ii == 1 || abs(x1_21(ii)-xt1_21(ii-1))>bar_x1_21
    xt1_21(ii) = x1_21(ii);
    rtx1_21=[rtx1_21;count];
    rttx1_21=[rttx1_21;count-tkx1_21];
    tkx1_21=count;
else
    xt1_21(ii) = xt1_21(ii-1);
end

if ii == 1 || abs(x1_31(ii)-xt1_31(ii-1))>bar_x1_31
    xt1_31(ii) = x1_31(ii);
    rtx1_31=[rtx1_31;count];
    rttx1_31=[rttx1_31;count-tkx1_31];
    tkx1_31=count;
else
    xt1_31(ii) = xt1_31(ii-1);
end

if ii == 1 || abs(x1_41(ii)-xt1_41(ii-1))>bar_x1_41
    xt1_41(ii) = x1_41(ii);
    rtx1_41=[rtx1_41;count];
    rttx1_41=[rttx1_41;count-tkx1_41];
    tkx1_41=count;
else
    xt1_41(ii) = xt1_41(ii-1);
end

%%%%%
if ii == 1 || abs(x2_11(ii)-xt2_11(ii-1))>bar_x2_11
    xt2_11(ii) = x2_11(ii);
    rtx2_11=[rtx2_11;count];
    rttx2_11=[rttx2_11;count-tkx2_11];
    tkx2_11=count;
else
    xt2_11(ii) = xt2_11(ii-1);
end

if ii == 1 || abs(x2_21(ii)-xt2_21(ii-1))>bar_x2_21
    xt2_21(ii) = x2_21(ii);
    rtx2_21=[rtx2_21;count];
    rttx2_21=[rttx2_21;count-tkx2_21];
    tkx2_21=count;
else
    xt2_21(ii) = xt2_21(ii-1);
end

if ii == 1 || abs(x2_31(ii)-xt2_31(ii-1))>bar_x2_31
    xt2_31(ii) = x2_31(ii);
    rtx2_31=[rtx2_31;count];
    rttx2_31=[rttx2_31;count-tkx2_31];
    tkx2_31=count;
else
    xt2_31(ii) = xt2_31(ii-1);
end

if ii == 1 || abs(x2_41(ii)-xt2_41(ii-1))>bar_x2_41
    xt2_41(ii) = x2_41(ii);
    rtx2_41=[rtx2_41;count];
    rttx2_41=[rttx2_41;count-tkx2_41];
    tkx2_41=count;
else
    xt2_41(ii) = xt2_41(ii-1);
end

%%%%%%%%%%%%%%
if ii == 1 || abs(x1_12(ii)-xt1_12(ii-1))>bar_x1_12
    xt1_12(ii) = x1_12(ii);
    rtx1_12=[rtx1_12;count];
    rttx1_12=[rttx1_12;count-tkx1_12];
    tkx1_12=count;
else
    xt1_12(ii) = xt1_12(ii-1);
end

if ii == 1 || abs(x1_22(ii)-xt1_22(ii-1))>bar_x1_22
    xt1_22(ii) = x1_22(ii);
    rtx1_22=[rtx1_22;count];
    rttx1_22=[rttx1_22;count-tkx1_22];
    tkx1_22=count;
else
    xt1_22(ii) = xt1_22(ii-1);
end

if ii == 1 || abs(x1_32(ii)-xt1_32(ii-1))>bar_x1_32
    xt1_32(ii) = x1_32(ii);
    rtx1_32=[rtx1_32;count];
    rttx1_32=[rttx1_32;count-tkx1_32];
    tkx1_32=count;
else
    xt1_32(ii) = xt1_32(ii-1);
end

if ii == 1 || abs(x1_42(ii)-xt1_42(ii-1))>bar_x1_42
    xt1_42(ii) = x1_42(ii);
    rtx1_42=[rtx1_42;count];
    rttx1_42=[rttx1_42;count-tkx1_42];
    tkx1_42=count;
else
    xt1_42(ii) = xt1_42(ii-1);
end

%%%%%
if ii == 1 || abs(x2_12(ii)-xt2_12(ii-1))>bar_x2_12
    xt2_12(ii) = x2_12(ii);
    rtx2_12=[rtx2_12;count];
    rttx2_12=[rttx2_12;count-tkx2_12];
    tkx2_12=count;
else
    xt2_12(ii) = xt2_12(ii-1);
end

if ii == 1 || abs(x2_22(ii)-xt2_22(ii-1))>bar_x2_22
    xt2_22(ii) = x2_22(ii);
    rtx2_22=[rtx2_22;count];
    rttx2_22=[rttx2_22;count-tkx2_22];
    tkx2_22=count;
else
    xt2_22(ii) = xt2_22(ii-1);
end

if ii == 1 || abs(x2_32(ii)-xt2_32(ii-1))>bar_x2_32
    xt2_32(ii) = x2_32(ii);
    rtx2_32=[rtx2_32;count];
    rttx2_32=[rttx2_32;count-tkx2_32];
    tkx2_32=count;
else
    xt2_32(ii) = xt2_32(ii-1);
end

if ii == 1 || abs(x2_42(ii)-xt2_42(ii-1))>bar_x2_42
    xt2_42(ii) = x2_42(ii);
    rtx2_42=[rtx2_42;count];
    rttx2_42=[rttx2_42;count-tkx2_42];
    tkx2_42=count;
else
    xt2_42(ii) = xt2_42(ii-1);
end


  %神经网络
    e1_11(1)=exp(-(xt1_11(ii)+2)^2/2)*exp(-(xt2_11(ii)+2)^2/2); 
    e1_11(2)=exp(-(xt1_11(ii)+1)^2/2)*exp(-(xt2_11(ii)+1)^2/2);
    e1_11(3)=exp(-(xt1_11(ii))^2/2)*exp(-(xt2_11(ii))^2/2);
    e1_11(4)=exp(-(xt1_11(ii)-1)^2/2)*exp(-(xt2_11(ii)-1)^2/2);
    e1_11(5)=exp(-(xt1_11(ii)-2)^2/2)*exp(-(xt2_11(ii)-2)^2/2);
    
    e1_21(1)=exp(-(xt1_21(ii)+2)^2/2)*exp(-(xt2_21(ii)+2)^2/2); 
    e1_21(2)=exp(-(xt1_21(ii)+1)^2/2)*exp(-(xt2_21(ii)+1)^2/2);
    e1_21(3)=exp(-(xt1_21(ii))^2/2)*exp(-(xt2_21(ii))^2/2);
    e1_21(4)=exp(-(xt1_21(ii)-1)^2/2)*exp(-(xt2_21(ii)-1)^2/2);
    e1_21(5)=exp(-(xt1_21(ii)-2)^2/2)*exp(-(xt2_21(ii)-2)^2/2);
    
    e1_31(1)=exp(-(xt1_31(ii)+2)^2/2)*exp(-(xt2_31(ii)+2)^2/2); 
    e1_31(2)=exp(-(xt1_31(ii)+1)^2/2)*exp(-(xt2_31(ii)+1)^2/2);
    e1_31(3)=exp(-(xt1_31(ii))^2/2)*exp(-(xt2_31(ii))^2/2);
    e1_31(4)=exp(-(xt1_31(ii)-1)^2/2)*exp(-(xt2_31(ii)-1)^2/2);
    e1_31(5)=exp(-(xt1_31(ii)-2)^2/2)*exp(-(xt2_31(ii)-2)^2/2);

    e1_41(1)=exp(-(xt1_41(ii)+2)^2/2)*exp(-(xt2_41(ii)+2)^2/2); 
    e1_41(2)=exp(-(xt1_41(ii)+1)^2/2)*exp(-(xt2_41(ii)+1)^2/2);
    e1_41(3)=exp(-(xt1_41(ii))^2/2)*exp(-(xt2_41(ii))^2/2);
    e1_41(4)=exp(-(xt1_41(ii)-1)^2/2)*exp(-(xt2_41(ii)-1)^2/2);
    e1_41(5)=exp(-(xt1_41(ii)-2)^2/2)*exp(-(xt2_41(ii)-2)^2/2);

    fai1_11=[e1_11(1);e1_11(2);e1_11(3);e1_11(4);e1_11(5)];
    fai1_21=[e1_21(1);e1_21(2);e1_21(3);e1_21(4);e1_21(5)];
    fai1_31=[e1_31(1);e1_31(2);e1_31(3);e1_31(4);e1_31(5)];
    fai1_41=[e1_41(1);e1_41(2);e1_41(3);e1_41(4);e1_41(5)];
    
 
    
    %%%%%%%%%%%
    e1_12(1)=exp(-(xt1_11(ii)+2)^2/2)*exp(-(xt1_12(ii)+2)^2/2)*exp(-(xt2_11(ii)+2)^2/2)*exp(-(xt2_12(ii)+2)^2/2); 
    e1_12(2)=exp(-(xt1_11(ii)+1)^2/2)*exp(-(xt1_12(ii)+1)^2/2)*exp(-(xt2_11(ii)+1)^2/2)*exp(-(xt2_12(ii)+1)^2/2);
    e1_12(3)=exp(-(xt1_11(ii))^2/2)*exp(-(xt1_12(ii))^2/2)*exp(-(xt2_11(ii))^2/2)*exp(-(xt2_12(ii))^2/2);
    e1_12(4)=exp(-(xt1_11(ii)-1)^2/2)*exp(-(xt1_12(ii)-1)^2/2)*exp(-(xt2_11(ii)-1)^2/2)*exp(-(xt2_12(ii)-1)^2/2);
    e1_12(5)=exp(-(xt1_11(ii)-2)^2/2)*exp(-(xt1_12(ii)-2)^2/2)*exp(-(xt2_11(ii)-2)^2/2)*exp(-(xt2_12(ii)-2)^2/2);

    e1_22(1)=exp(-(xt1_21(ii)+2)^2/2)*exp(-(xt1_22(ii)+2)^2/2)*exp(-(xt2_21(ii)+2)^2/2)*exp(-(xt2_22(ii)+2)^2/2); 
    e1_22(2)=exp(-(xt1_21(ii)+1)^2/2)*exp(-(xt1_22(ii)+1)^2/2)*exp(-(xt2_21(ii)+1)^2/2)*exp(-(xt2_22(ii)+1)^2/2);
    e1_22(3)=exp(-(xt1_21(ii))^2/2)*exp(-(xt1_22(ii))^2/2)*exp(-(xt2_21(ii))^2/2)*exp(-(xt2_22(ii))^2/2);
    e1_22(4)=exp(-(xt1_21(ii)-1)^2/2)*exp(-(xt1_22(ii)-1)^2/2)*exp(-(xt2_21(ii)-1)^2/2)*exp(-(xt2_22(ii)-1)^2/2);
    e1_22(5)=exp(-(xt1_21(ii)-2)^2/2)*exp(-(xt1_22(ii)-2)^2/2)*exp(-(xt2_21(ii)-2)^2/2)*exp(-(xt2_22(ii)-2)^2/2);

    e1_32(1)=exp(-(xt1_31(ii)+2)^2/2)*exp(-(xt1_32(ii)+2)^2/2)*exp(-(xt2_31(ii)+2)^2/2)*exp(-(xt2_32(ii)+2)^2/2); 
    e1_32(2)=exp(-(xt1_31(ii)+1)^2/2)*exp(-(xt1_32(ii)+1)^2/2)*exp(-(xt2_31(ii)+1)^2/2)*exp(-(xt2_32(ii)+1)^2/2);
    e1_32(3)=exp(-(xt1_31(ii))^2/2)*exp(-(xt1_32(ii))^2/2)*exp(-(xt2_31(ii))^2/2)*exp(-(xt2_32(ii))^2/2);
    e1_32(4)=exp(-(xt1_31(ii)-1)^2/2)*exp(-(xt1_32(ii)-1)^2/2)*exp(-(xt2_31(ii)-1)^2/2)*exp(-(xt2_32(ii)-1)^2/2);
    e1_32(5)=exp(-(xt1_31(ii)-2)^2/2)*exp(-(xt1_32(ii)-2)^2/2)*exp(-(xt2_31(ii)-2)^2/2)*exp(-(xt2_32(ii)-2)^2/2);
    
    e1_42(1)=exp(-(xt1_41(ii)+2)^2/2)*exp(-(xt1_42(ii)+2)^2/2)*exp(-(xt2_41(ii)+2)^2/2)*exp(-(xt2_42(ii)+2)^2/2); 
    e1_42(2)=exp(-(xt1_41(ii)+1)^2/2)*exp(-(xt1_42(ii)+1)^2/2)*exp(-(xt2_41(ii)+1)^2/2)*exp(-(xt2_42(ii)+1)^2/2);
    e1_42(3)=exp(-(xt1_41(ii))^2/2)*exp(-(xt1_42(ii))^2/2)*exp(-(xt2_41(ii))^2/2)*exp(-(xt2_42(ii))^2/2);
    e1_42(4)=exp(-(xt1_41(ii)-1)^2/2)*exp(-(xt1_42(ii)-1)^2/2)*exp(-(xt2_41(ii)-1)^2/2)*exp(-(xt2_42(ii)-1)^2/2);
    e1_42(5)=exp(-(xt1_41(ii)-2)^2/2)*exp(-(xt1_42(ii)-2)^2/2)*exp(-(xt2_41(ii)-2)^2/2)*exp(-(xt2_42(ii)-2)^2/2);
    
    
    fai1_12=[e1_12(1);e1_12(2);e1_12(3);e1_12(4);e1_12(5)];
    fai1_22=[e1_22(1);e1_22(2);e1_22(3);e1_22(4);e1_22(5)];
    fai1_32=[e1_32(1);e1_32(2);e1_32(3);e1_32(4);e1_32(5)];
    fai1_42=[e1_42(1);e1_42(2);e1_42(3);e1_42(4);e1_42(5)];
    
    

%队形之间的距离
n1_1 = 0.05*sin(0.1*ii*ts);
n1_2 = 0.05*sin(0.1*ii*ts);
n1_3 = 0.05*sin(0.1*ii*ts);
n1_4 = 0.05*sin(0.1*ii*ts);

n2_1 = -0.4-0.05*cos(0.1*ii*ts);
n2_2 = -0.2-0.05*cos(0.1*ii*ts);
n2_3 = 0.2-0.05*cos(0.1*ii*ts);
n2_4 = 0.4-0.05*cos(0.1*ii*ts);


%%%导数
dn1_1 = 0.005*cos(0.1*ii*ts);
dn1_2 = 0.005*cos(0.1*ii*ts);
dn1_3 = 0.005*cos(0.1*ii*ts);
dn1_4 = 0.005*cos(0.1*ii*ts);

dn2_1 = 0.005*sin(0.1*ii*ts);
dn2_2 = 0.005*sin(0.1*ii*ts);
dn2_3 = 0.005*sin(0.1*ii*ts);
dn2_4 = 0.005*sin(0.1*ii*ts);


%坐标变换
Z1_11(ii) = xt1_11(ii)-neta1_1(ii);
Z1_21(ii) = xt1_21(ii)-neta1_2(ii);
Z1_31(ii) = xt1_31(ii)-neta1_3(ii);
Z1_41(ii) = xt1_41(ii)-neta1_4(ii);

Z2_11(ii) = xt2_11(ii)-neta2_1(ii);
Z2_21(ii) = xt2_21(ii)-neta2_2(ii);
Z2_31(ii) = xt2_31(ii)-neta2_3(ii);
Z2_41(ii) = xt2_41(ii)-neta2_4(ii);


%%%
Z1_12(ii)=xt1_12(ii)-alph_f1_12(ii);
Z1_22(ii)=xt1_22(ii)-alph_f1_22(ii);
Z1_32(ii)=xt1_32(ii)-alph_f1_32(ii);
Z1_42(ii)=xt1_42(ii)-alph_f1_42(ii);

Z2_12(ii)=xt2_12(ii)-alph_f2_12(ii);
Z2_22(ii)=xt2_22(ii)-alph_f2_22(ii);
Z2_32(ii)=xt2_32(ii)-alph_f2_32(ii);
Z2_42(ii)=xt2_42(ii)-alph_f2_42(ii);


%虚拟控制器1
R1_1(ii) = dn1_1-(B(1,1)*n1_1+B(1,2)*n2_1);
R2_1(ii) = dn2_1-(B(2,1)*n1_1+B(2,2)*n2_1);

R1_2(ii) = dn1_2-(B(1,1)*n1_2+B(1,2)*n2_2);
R2_2(ii) = dn2_2-(B(2,1)*n1_2+B(2,2)*n2_2);

R1_3(ii) = dn1_3-(B(1,1)*n1_3+B(1,2)*n2_3);
R2_3(ii) = dn2_3-(B(2,1)*n1_3+B(2,2)*n2_3);

R1_4(ii) = dn1_4-(B(1,1)*n1_4+B(1,2)*n2_4);
R2_4(ii) = dn2_4-(B(2,1)*n1_4+B(2,2)*n2_4);


alph1_11(ii)=-c1_11*Z1_11(ii)-2*Z1_11(ii)-derta1*neta1_1(ii)+R1_1(ii)+B(1,1)*cota1_11(ii)+B(1,2)*cota2_11(ii)-([gjian1_11(ii) gjian1_12(ii) gjian1_13(ii) gjian1_14(ii) gjian1_15(ii)]*fai1_11);
alph2_11(ii)=-c2_11*Z2_11(ii)-2*Z2_11(ii)-derta1*neta2_1(ii)+R2_1(ii)+B(2,1)*cota1_11(ii)+B(2,2)*cota2_11(ii)-([gjian2_11(ii) gjian2_12(ii) gjian2_13(ii) gjian2_14(ii) gjian2_15(ii)]*fai1_11);

alph1_21(ii)=-c1_21*Z1_21(ii)-2*Z1_21(ii)-derta2*neta1_2(ii)+R1_2(ii)+B(1,1)*cota1_21(ii)+B(1,2)*cota2_21(ii)-([gjian1_21(ii) gjian1_22(ii) gjian1_23(ii) gjian1_24(ii) gjian1_25(ii)]*fai1_21);
alph2_21(ii)=-c2_21*Z2_21(ii)-2*Z2_21(ii)-derta2*neta2_2(ii)+R2_2(ii)+B(2,1)*cota1_21(ii)+B(2,2)*cota2_21(ii)-([gjian2_21(ii) gjian2_22(ii) gjian2_23(ii) gjian2_24(ii) gjian2_25(ii)]*fai1_21);

alph1_31(ii)=-c1_31*Z1_31(ii)-2*Z1_31(ii)-derta3*neta1_3(ii)+R1_3(ii)+B(1,1)*cota1_31(ii)+B(1,2)*cota2_31(ii)-([gjian1_31(ii) gjian1_32(ii) gjian1_33(ii) gjian1_34(ii) gjian1_35(ii)]*fai1_31);
alph2_31(ii)=-c2_31*Z2_31(ii)-2*Z2_31(ii)-derta3*neta2_3(ii)+R2_3(ii)+B(2,1)*cota1_31(ii)+B(2,2)*cota2_31(ii)-([gjian2_31(ii) gjian2_32(ii) gjian2_33(ii) gjian2_34(ii) gjian2_35(ii)]*fai1_31);

alph1_41(ii)=-c1_41*Z1_41(ii)-2*Z1_41(ii)-derta4*neta1_4(ii)+R1_4(ii)+B(1,1)*cota1_41(ii)+B(1,2)*cota2_41(ii)-([gjian1_41(ii) gjian1_42(ii) gjian1_43(ii) gjian1_44(ii) gjian1_45(ii)]*fai1_41);
alph2_41(ii)=-c2_41*Z2_41(ii)-2*Z2_41(ii)-derta4*neta2_4(ii)+R2_4(ii)+B(2,1)*cota1_41(ii)+B(2,2)*cota2_41(ii)-([gjian2_41(ii) gjian2_42(ii) gjian2_43(ii) gjian2_44(ii) gjian2_45(ii)]*fai1_41);

%滤波器的事件触发
if ii == 1 || abs(alph_f1_12(ii)-alph_tf1_12(ii-1))>bar_alph_f1_12
    alph_tf1_12(ii) = alph_f1_12(ii);
    rta1_1=[rta1_1;count];
    rtta1_1=[rtta1_1;count-tka1_1];
    tka1_1=count;
else
    alph_tf1_12(ii) = alph_tf1_12(ii-1);
end

if ii == 1 || abs(alph_f1_22(ii)-alph_tf1_22(ii-1))>bar_alph_f1_22
    alph_tf1_22(ii) = alph_f1_22(ii);
    rta1_2=[rta1_2;count];
    rtta1_2=[rtta1_2;count-tka1_2];
    tka1_2=count;
else
    alph_tf1_22(ii) = alph_tf1_22(ii-1);
end

if ii == 1 || abs(alph_f1_32(ii)-alph_tf1_32(ii-1))>bar_alph_f1_32
    alph_tf1_32(ii) = alph_f1_32(ii);
    rta1_3=[rta1_3;count];
    rtta1_3=[rtta1_3;count-tka1_3];
    tka1_3=count;
else
    alph_tf1_32(ii) = alph_tf1_32(ii-1);
end

if ii == 1 || abs(alph_f1_42(ii)-alph_tf1_42(ii-1))>bar_alph_f1_42
    alph_tf1_42(ii) = alph_f1_42(ii);
    rta1_4=[rta1_4;count];
    rtta1_4=[rtta1_4;count-tka1_4];
    tka1_4=count;
else
    alph_tf1_42(ii) = alph_tf1_42(ii-1);
end

%%%%%%
if ii == 1 || abs(alph_f2_12(ii)-alph_tf2_12(ii-1))>bar_alph_f2_12
    alph_tf2_12(ii) = alph_f2_12(ii);
    rta2_1=[rta2_1;count];
    rtta2_1=[rtta2_1;count-tka2_1];
    tka2_1=count;
else
    alph_tf2_12(ii) = alph_tf2_12(ii-1);
end

if ii == 1 || abs(alph_f2_22(ii)-alph_tf2_22(ii-1))>bar_alph_f2_22
    alph_tf2_22(ii) = alph_f2_22(ii);
    rta2_2=[rta2_2;count];
    rtta2_2=[rtta2_2;count-tka2_2];
    tka2_2=count;
else
    alph_tf2_22(ii) = alph_tf2_22(ii-1);
end

if ii == 1 || abs(alph_f2_32(ii)-alph_tf2_32(ii-1))>bar_alph_f2_32
    alph_tf2_32(ii) = alph_f2_32(ii);
    rta2_3=[rta2_3;count];
    rtta2_3=[rtta2_3;count-tka2_3];
    tka2_3=count;
else
    alph_tf2_32(ii) = alph_tf2_32(ii-1);
end

if ii == 1 || abs(alph_f2_42(ii)-alph_tf2_42(ii-1))>bar_alph_f2_42
    alph_tf2_42(ii) = alph_f2_42(ii);
    rta2_4=[rta2_4;count];
    rtta2_4=[rtta2_4;count-tka2_4];
    tka2_4=count;
else
    alph_tf2_42(ii) = alph_tf2_42(ii-1);
end

%一阶滤波器

w1_12(ii) =alph_tf1_12(ii)-alph1_11(ii);
dalph_f1_12(ii) = -w1_12(ii)/k1_1;
w1_22(ii) =alph_tf1_22(ii)-alph1_21(ii);
dalph_f1_22(ii) = -w1_22(ii)/k1_2;
w1_32(ii) =alph_tf1_32(ii)-alph1_31(ii);
dalph_f1_32(ii) = -w1_32(ii)/k1_3;
w1_42(ii) =alph_tf1_42(ii)-alph1_41(ii);
dalph_f1_42(ii) = -w1_42(ii)/k1_4;

w2_12(ii) =alph_tf2_12(ii)-alph2_11(ii);
dalph_f2_12(ii) = -w2_12(ii)/k2_1;
w2_22(ii) =alph_tf2_22(ii)-alph2_21(ii);
dalph_f2_22(ii) = -w2_22(ii)/k2_2;
w2_32(ii) =alph_tf2_32(ii)-alph2_31(ii);
dalph_f2_32(ii) = -w2_32(ii)/k2_3;
w2_42(ii) =alph_tf2_42(ii)-alph2_41(ii);
dalph_f2_42(ii) = -w2_42(ii)/k2_4;


%最终控制器
u1_1(ii)=-c1_12*Z1_12(ii)-2*Z1_12(ii)+dalph_f1_12(ii)-([wjian1_11(ii) wjian1_12(ii) wjian1_13(ii) wjian1_14(ii) wjian1_15(ii)]*fai1_12);
u1_2(ii)=-c1_22*Z1_22(ii)-2*Z1_22(ii)+dalph_f1_22(ii)-([wjian1_21(ii) wjian1_22(ii) wjian1_23(ii) wjian1_24(ii) wjian1_25(ii)]*fai1_22);
u1_3(ii)=-c1_32*Z1_32(ii)-2*Z1_32(ii)+dalph_f1_32(ii)-([wjian1_31(ii) wjian1_32(ii) wjian1_33(ii) wjian1_34(ii) wjian1_35(ii)]*fai1_32);
u1_4(ii)=-c1_42*Z1_42(ii)-2*Z1_42(ii)+dalph_f1_42(ii)-([wjian1_41(ii) wjian1_42(ii) wjian1_43(ii) wjian1_44(ii) wjian1_45(ii)]*fai1_42);

u2_1(ii)=-c2_12*Z2_12(ii)-2*Z2_12(ii)+dalph_f2_12(ii)-([wjian2_11(ii) wjian2_12(ii) wjian2_13(ii) wjian2_14(ii) wjian2_15(ii)]*fai1_12);
u2_2(ii)=-c2_22*Z2_22(ii)-2*Z2_22(ii)+dalph_f2_22(ii)-([wjian2_21(ii) wjian2_22(ii) wjian2_23(ii) wjian2_24(ii) wjian2_25(ii)]*fai1_22);
u2_3(ii)=-c2_32*Z2_32(ii)-2*Z2_32(ii)+dalph_f2_32(ii)-([wjian2_31(ii) wjian2_32(ii) wjian2_33(ii) wjian2_34(ii) wjian2_35(ii)]*fai1_32);
u2_4(ii)=-c2_42*Z2_42(ii)-2*Z2_42(ii)+dalph_f2_42(ii)-([wjian2_41(ii) wjian2_42(ii) wjian2_43(ii) wjian2_44(ii) wjian2_45(ii)]*fai1_42);


%饱和参数
u1_M1(ii) = up1_1;
u1_m1(ii) = down1_1; 
u2_M1(ii) = up2_1;
u2_m1(ii) = down2_1; 

u1_M2(ii) = up1_2;
u1_m2(ii) = down1_2; 
u2_M2(ii) = up2_2;
u2_m2(ii) = down2_2; 

u1_M3(ii) = up1_3;
u1_m3(ii) = down1_3; 
u2_M3(ii) = up2_3;
u2_m3(ii) = down2_3; 

u1_M4(ii) = up1_4;
u1_m4(ii) = down1_4; 
u2_M4(ii) = up2_4;
u2_m4(ii) = down2_4;

%饱和模型
if u1_1(ii)>=u1_M1(ii)
    Su1_1(ii) = u1_M1(ii);
elseif u1_1(ii) <= -u1_m1(ii)
    Su1_1(ii) = -u1_m1(ii);
else
    Su1_1(ii) = u1_1(ii);
end
if u2_1(ii)>=u2_M1(ii)
    Su2_1(ii) = u2_M1(ii);
elseif u2_1(ii) <= -u2_m1(ii)
    Su2_1(ii) = -u2_m1(ii);
else
    Su2_1(ii) = u2_1(ii);
end

if u1_2(ii)>=u1_M2(ii)
    Su1_2(ii) = u1_M2(ii);
elseif u1_2(ii) <= -u1_m2(ii)
    Su1_2(ii) = -u1_m2(ii);
else
    Su1_2(ii) = u1_2(ii);
end
if u2_2(ii)>=u2_M2(ii)
    Su2_2(ii) = u2_M2(ii);
elseif u2_2(ii) <= -u2_m2(ii)
    Su2_2(ii) = -u2_m2(ii);
else
    Su2_2(ii) = u2_2(ii);
end

if u1_3(ii)>=u1_M3(ii)
    Su1_3(ii) = u1_M3(ii);
elseif u1_3(ii) <= -u1_m3(ii)
    Su1_3(ii) = -u1_m3(ii);
else
    Su1_3(ii) = u1_3(ii);
end
if u2_3(ii)>=u2_M3(ii)
    Su2_3(ii) = u2_M3(ii);
elseif u2_3(ii) <= -u2_m3(ii)
    Su2_3(ii) = -u2_m3(ii);
else
    Su2_3(ii) = u2_3(ii);
end

if u1_4(ii)>=u1_M4(ii)
    Su1_4(ii) = u1_M4(ii);
elseif u1_4(ii) <= -u1_m4(ii)
    Su1_4(ii) = -u1_m4(ii);
else
    Su1_4(ii) = u1_4(ii);
end
if u2_4(ii)>=u2_M4(ii)
    Su2_4(ii) = u2_M4(ii);
elseif u2_4(ii) <= -u2_m4(ii)
    Su2_4(ii) = -u2_m4(ii);
else
    Su2_4(ii) = u2_4(ii);
end

 end

end

figure(1)
plot3(tt,x1_11,x2_11,tt,x1_21,x2_21,tt,x1_31,x2_31,tt,x1_41,x2_41,tt,y1_r,y2_r,'linewidth', 1)
xl=xlabel('Time(Sec)');
yl=ylabel('$\xi_\vartheta ^1$');
zl=zlabel('$\xi_\vartheta ^2$');
set(xl,'Interpreter','latex')
ll=legend('${y_{1}}$','${y_{2}}$','${y_{3}}$','${y_{4}}$','${y_{r}}$');
set(ll,'Interpreter','latex','fontsize',30)
set(xl,'Interpreter','latex','fontsize',30)
set(yl,'Interpreter','latex','fontsize',30)
set(zl,'Interpreter','latex','fontsize',30)
set(gca,'fontsize',30)


figure(2)
plot(tt,Z1_11,tt,Z2_11,tt,Z1_21,tt,Z2_21,tt,Z1_31,tt,Z2_31,tt,Z1_41,tt,Z2_41,'linewidth', 1)
axis([0,30,-0.5,0.6]);
H_pa = patch([0.04 0.99 1.19 0.19],[-2 -2 2 2],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
H_pa = patch([3.39 5.19 5.19 3.39],[-2 -2 2 2],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
H_pa = patch([7.99 8.99 8.99 7.99],[-2 -2 2 2],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
H_pa = patch([11.99 12.39 12.39 11.99],[-2 -2 2 2],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
H_pa = patch([15.99 16.39 16.39 15.99],[-2 -2 2 2],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
xl=xlabel('Time(Sec)');
set(xl,'Interpreter','latex')
ll=legend('$Z_{11}^1$','$Z_{11}^2$','$Z_{21}^1$','$Z_{21}^1$','$Z_{31}^1$','$Z_{31}^2$','$Z_{41}^1$','$Z_{41}^2$');
set(ll,'Interpreter','latex','fontsize',30)
set(xl,'Interpreter','latex','fontsize',30)
set(gca,'fontsize',30)



figure(3)
subplot(4,1,1);
plot(tt,Su1_1,'-b',tt,u1_1,'-.m',tt,u1_M1,'-.r',tt,-u1_m1,'-.r','linewidth', 1)
axis([0,30,-900,600]);
H_pa = patch([0.04 0.99 1.19 0.19],[-5000 -5000 5000 5000],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
H_pa = patch([3.39 5.19 5.19 3.39],[-5000 -5000 5000 5000],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
H_pa = patch([7.99 8.99 8.99 7.99],[-5000 -5000 5000 5000],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
H_pa = patch([11.99 12.39 12.39 11.99],[-5000 -5000 5000 5000],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
H_pa = patch([15.99 16.39 16.39 15.99],[-5000 -5000 5000 5000],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
ll=legend('$S(u_{1}^1)$','$u_{1}^1$','$u_{up}^1$','$u_{down}^1$','DoS');
set(ll,'Interpreter','latex','fontsize',15)
subplot(4,1,2);
plot(tt,Su1_2,'-b',tt,u1_2,'-.m',tt,u1_M2,'-.r',tt,-u1_m2,'-.r','linewidth', 1)
axis([0,30,-2000,1000]);
H_pa = patch([0.04 0.99 1.19 0.19],[-5000 -5000 5000 5000],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
H_pa = patch([3.39 5.19 5.19 3.39],[-5000 -5000 5000 5000],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
H_pa = patch([7.99 8.99 8.99 7.99],[-5000 -5000 5000 5000],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
H_pa = patch([11.99 12.39 12.39 11.99],[-5000 -5000 5000 5000],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
H_pa = patch([15.99 16.39 16.39 15.99],[-5000 -5000 5000 5000],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
ll=legend('$S(u_{2}^1)$','$u_{2}^1$','$u_{up}^1$','$u_{down}^1$','DoS');
set(ll,'Interpreter','latex','fontsize',15)
subplot(4,1,3);
plot(tt,Su1_3,'-b',tt,u1_3,'-.m',tt,u1_M3,'-.r',tt,-u1_m3,'-.r','linewidth', 1)
axis([0,30,-3000,1500]);
H_pa = patch([0.04 0.99 1.19 0.19],[-5000 -5000 5000 5000],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
H_pa = patch([3.39 5.19 5.19 3.39],[-5000 -5000 5000 5000],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
H_pa = patch([7.99 8.99 8.99 7.99],[-5000 -5000 5000 5000],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
H_pa = patch([11.99 12.39 12.39 11.99],[-5000 -5000 5000 5000],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
H_pa = patch([15.99 16.39 16.39 15.99],[-5000 -5000 5000 5000],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
ll=legend('$S(u_{3}^1)$','$u_{3}^1$','$u_{up}^1$','$u_{down}^1$','DoS');
set(ll,'Interpreter','latex','fontsize',15)
subplot(4,1,4);
plot(tt,Su1_4,'-b',tt,u1_4,'-.m',tt,u1_M4,'-.r',tt,-u1_m4,'-.r','linewidth', 1)
axis([0,30,-4000,2000]);
H_pa = patch([0.04 0.99 1.19 0.19],[-5000 -5000 5000 5000],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
H_pa = patch([3.39 5.19 5.19 3.39],[-5000 -5000 5000 5000],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
H_pa = patch([7.99 8.99 8.99 7.99],[-5000 -5000 5000 5000],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
H_pa = patch([11.99 12.39 12.39 11.99],[-5000 -5000 5000 5000],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
H_pa = patch([15.99 16.39 16.39 15.99],[-5000 -5000 5000 5000],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
ll=legend('$S(u_{4}^1)$','$u_{4}^1$','$u_{up}^1$','$u_{down}^1$','DoS');
xl=xlabel('Time(Sec)');
set(xl,'Interpreter','latex')
set(ll,'Interpreter','latex','fontsize',15)
set(xl,'Interpreter','latex','fontsize',20)
hold on

figure(4)
subplot(4,1,1);
plot(tt,Su2_1,'-b',tt,u2_1,'-.m',tt,u2_M1,'-.r',tt,-u2_m1,'-.r','linewidth', 1)
axis([0,30,-1000,400]);
H_pa = patch([0.04 0.99 1.19 0.19],[-5000 -5000 5000 5000],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
H_pa = patch([3.39 5.19 5.19 3.39],[-5000 -5000 5000 5000],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
H_pa = patch([7.99 8.99 8.99 7.99],[-5000 -5000 5000 5000],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
H_pa = patch([11.99 12.39 12.39 11.99],[-5000 -5000 5000 5000],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
H_pa = patch([15.99 16.39 16.39 15.99],[-5000 -5000 5000 5000],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
ll=legend('$S(u_{1}^2)$','$u_{1}^2$','$u_{up}^2$','$u_{down}^2$','DoS');
set(ll,'Interpreter','latex','fontsize',15)
subplot(4,1,2);
plot(tt,Su2_2,'-b',tt,u2_2,'-.m',tt,u2_M2,'-.r',tt,-u2_m2,'-.r','linewidth', 1)
axis([0,30,-1600,1000]);
H_pa = patch([0.04 0.99 1.19 0.19],[-5000 -5000 5000 5000],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
H_pa = patch([3.39 5.19 5.19 3.39],[-5000 -5000 5000 5000],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
H_pa = patch([7.99 8.99 8.99 7.99],[-5000 -5000 5000 5000],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
H_pa = patch([11.99 12.39 12.39 11.99],[-5000 -5000 5000 5000],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
H_pa = patch([15.99 16.39 16.39 15.99],[-5000 -5000 5000 5000],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
ll=legend('$S(u_{2}^2)$','$u_{2}^2$','$u_{up}^2$','$u_{down}^2$','DoS');
set(ll,'Interpreter','latex','fontsize',15)
subplot(4,1,3);
plot(tt,Su2_3,'-b',tt,u2_3,'-.m',tt,u2_M3,'-.r',tt,-u2_m3,'-.r','linewidth', 1)
axis([0,30,-3000,1600]);
H_pa = patch([0.04 0.99 1.19 0.19],[-5000 -5000 5000 5000],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
H_pa = patch([3.39 5.19 5.19 3.39],[-5000 -5000 5000 5000],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
H_pa = patch([7.99 8.99 8.99 7.99],[-5000 -5000 5000 5000],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
H_pa = patch([11.99 12.39 12.39 11.99],[-5000 -5000 5000 5000],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
H_pa = patch([15.99 16.39 16.39 15.99],[-5000 -5000 5000 5000],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
ll=legend('$S(u_{3}^2)$','$u_{3}^2$','$u_{up}^2$','$u_{down}^2$','DoS');
set(ll,'Interpreter','latex','fontsize',15)
subplot(4,1,4);
plot(tt,Su2_4,'-b',tt,u2_4,'-.m',tt,u2_M4,'-.r',tt,-u2_m4,'-.r','linewidth', 1)
axis([0,30,-4500,3000]);
H_pa = patch([0.04 0.99 1.19 0.19],[-5000 -5000 5000 5000],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
H_pa = patch([3.39 5.19 5.19 3.39],[-5000 -5000 5000 5000],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
H_pa = patch([7.99 8.99 8.99 7.99],[-5000 -5000 5000 5000],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
H_pa = patch([11.99 12.39 12.39 11.99],[-5000 -5000 5000 5000],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
H_pa = patch([15.99 16.39 16.39 15.99],[-5000 -5000 5000 5000],[.6 .6 .6]);
set(H_pa,'EdgeColor',[.8 .8 .8],'EdgeAlpha',0.5,'FaceAlpha',0.5)
ll=legend('$S(u_{4}^2)$','$u_{4}^2$','$u_{up}^2$','$u_{down}^2$','DoS');
xl=xlabel('Time(Sec)');
set(ll,'Interpreter','latex','fontsize',15)
set(xl,'Interpreter','latex','fontsize',20)
hold on



sz=30;
figure(5)
scatter(rtx1_11,ones(size(rttx1_11,1),1),sz,'pentagram');
axis([0,30,0,18]);
hold on
scatter(rtx1_21,ones(size(rttx1_21,1),1)*2,sz,'o');
hold on
scatter(rtx1_31,ones(size(rttx1_31,1),1)*3,sz,'diamond');
hold on
scatter(rtx1_41,ones(size(rttx1_41,1),1)*4,sz,'^');
hold on
scatter(rtx2_11,ones(size(rttx2_11,1),1)*5,sz,'p');
hold on
scatter(rtx2_21,ones(size(rttx2_21,1),1)*6,sz,'s');
hold on
scatter(rtx2_31,ones(size(rttx2_31,1),1)*7,sz,'x');
hold on
scatter(rtx2_41,ones(size(rttx2_41,1),1)*8,sz,'h');
ll=legend('$\xi_{1}^1$','$\xi_{2}^1$','$\xi_{3}^1$','$\xi_{4}^1$','$\xi_{1}^2$','$\xi_{2}^2$','$\xi_{3}^2$','$\xi_{4}^2$');
xl=xlabel('Time(Sec)');
%%%下标签
set(ll,'Interpreter','latex','fontsize',30)
set(xl,'Interpreter','latex','fontsize',30)
set(gca,'fontsize',30)
box on

figure(6)
scatter(rtx1_12,ones(size(rttx1_12,1),1),sz,'pentagram');
axis([0,30,0,18]);
hold on
scatter(rtx1_22,ones(size(rttx1_22,1),1)*2,sz,'o');
hold on
scatter(rtx1_32,ones(size(rttx1_32,1),1)*3,sz,'diamond');
hold on
scatter(rtx1_42,ones(size(rttx1_42,1),1)*4,sz,'^');
hold on
scatter(rtx2_12,ones(size(rttx2_12,1),1)*5,sz,'p');
hold on
scatter(rtx2_22,ones(size(rttx2_22,1),1)*6,sz,'s');
hold on
scatter(rtx2_32,ones(size(rttx2_32,1),1)*7,sz,'x');
hold on
scatter(rtx2_42,ones(size(rttx2_42,1),1)*8,sz,'h');
ll=legend('$v_{1}^1$','$v_{2}^1$','$v_{3}^1$','$v_{4}^1$','$v_{1}^2$','$v_{2}^2$','$v_{3}^2$','$v_{4}^2$');
xl=xlabel('Time(Sec)');
%%%下标签
set(ll,'Interpreter','latex','fontsize',30)
set(xl,'Interpreter','latex','fontsize',30)
set(gca,'fontsize',30)
box on

figure(7)
scatter(rta1_1,ones(size(rtta1_1,1),1),sz,'pentagram');
axis([0,30,0,18]);
hold on
scatter(rta1_2,ones(size(rtta1_2,1),1)*2,sz,'o');
hold on
scatter(rta1_3,ones(size(rtta1_3,1),1)*3,sz,'diamond');
hold on
scatter(rta1_4,ones(size(rtta1_4,1),1)*4,sz,'^');
hold on
scatter(rta2_1,ones(size(rtta2_1,1),1)*5,sz,'p');
hold on
scatter(rta2_2,ones(size(rtta2_2,1),1)*6,sz,'s');
hold on
scatter(rta2_3,ones(size(rtta2_3,1),1)*7,sz,'x');
hold on
scatter(rta2_4,ones(size(rtta2_4,1),1)*8,sz,'h');
ll=legend('$\alpha _{12}^{1f}$','$\alpha _{22}^{1f}$','$\alpha _{32}^{1f}$','$\alpha _{42}^{1f}$','$\alpha _{12}^{2f}$','$\alpha _{22}^{2f}$','$\alpha _{32}^{2f}$','$\alpha _{42}^{2f}$');
xl=xlabel('Time(Sec)');
%%%下标签
set(ll,'Interpreter','latex','fontsize',30)
set(xl,'Interpreter','latex','fontsize',30)
set(gca,'fontsize',30)
box on

endt=datetime;
errort=endt-begint;
disp(sprintf('The total time is %s.',errort)) %#ok<DSPS>




