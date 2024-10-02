function dz = dznt_12_s(t,z,K)

%基本图论信息
 A= [0 1 0 0;
    1 0 1 0;
    0 1 0 1;
    0 0 1 0];

b(1)=0;b(2)=1;b(3)=1;b(4)=0;


x1_11	=	z(1);
x1_21	=	z(2);
x1_31	=	z(3);
x1_41	=	z(4);
x1_12	=	z(5);
x1_22	=	z(6);
x1_32	=	z(7);
x1_42	=	z(8);

x2_11	=	z(9);
x2_21	=	z(10);
x2_31	=	z(11);
x2_41	=	z(12);
x2_12	=	z(13);
x2_22	=	z(14);
x2_32	=	z(15);
x2_42	=	z(16);

neta1_1 = z(17);
neta1_2 = z(18);
neta1_3 = z(19);
neta1_4 = z(20);

neta2_1 = z(21);
neta2_2 = z(22);
neta2_3 = z(23);
neta2_4 = z(24);


cota1_11 = z(25);
cota1_21 = z(26);
cota1_31 = z(27);
cota1_41 = z(28);

cota2_11 = z(29);
cota2_21 = z(30);
cota2_31 = z(31);
cota2_41 = z(32);


gjian1_11	=	z(33)	;
gjian1_12	=	z(34)	;
gjian1_13	=	z(35)	;
gjian1_14	=	z(36)	;
gjian1_15	=	z(37)	;
gjian1_21	=	z(38)	;
gjian1_22	=	z(39)	;
gjian1_23	=	z(40)	;
gjian1_24	=	z(41)	;
gjian1_25	=	z(42)	;
gjian1_31	=	z(43)	;
gjian1_32	=	z(44)	;
gjian1_33	=	z(45)	;
gjian1_34	=	z(46)	;
gjian1_35	=	z(47)	;
gjian1_41	=	z(48)	;
gjian1_42	=	z(49)	;
gjian1_43	=	z(50)	;
gjian1_44	=	z(51)	;
gjian1_45	=	z(52)	;

gjian2_11	=	z(53)	;
gjian2_12	=	z(54)	;
gjian2_13	=	z(55)	;
gjian2_14	=	z(56)	;
gjian2_15	=	z(57)	;
gjian2_21	=	z(58)	;
gjian2_22	=	z(59)	;
gjian2_23	=	z(60)	;
gjian2_24	=	z(61)	;
gjian2_25	=	z(62)	;
gjian2_31	=	z(63)	;
gjian2_32	=	z(64)	;
gjian2_33	=	z(65)	;
gjian2_34	=	z(66)	;
gjian2_35	=	z(67)	;
gjian2_41	=	z(68)	;
gjian2_42	=	z(69)	;
gjian2_43	=	z(70)	;
gjian2_44	=	z(71)	;
gjian2_45	=	z(72)	;


wjian1_11	=	z(73)	;
wjian1_12	=	z(74)	;
wjian1_13	=	z(75)	;
wjian1_14	=	z(76)	;
wjian1_15	=	z(77)	;
wjian1_21	=	z(78)	;
wjian1_22	=	z(79)	;
wjian1_23	=	z(80)	;
wjian1_24	=	z(81)	;
wjian1_25	=	z(82)	;
wjian1_31	=	z(83)	;
wjian1_32	=	z(84)	;
wjian1_33	=	z(85)	;
wjian1_34	=	z(86)	;
wjian1_35	=	z(87)	;
wjian1_41	=	z(88)	;
wjian1_42	=	z(89)	;
wjian1_43	=	z(90)	;
wjian1_44	=	z(91)	;
wjian1_45	=	z(92)	;

wjian2_11	=	z(93);
wjian2_12	=	z(94);
wjian2_13	=	z(95);
wjian2_14	=	z(96);
wjian2_15	=	z(97);
wjian2_21	=	z(98);
wjian2_22	=	z(99);
wjian2_23	=	z(100);
wjian2_24	=	z(101);
wjian2_25	=	z(102);
wjian2_31	=	z(103);
wjian2_32	=	z(104);
wjian2_33	=	z(105);
wjian2_34	=	z(106);
wjian2_35	=	z(107);
wjian2_41	=	z(108);
wjian2_42	=	z(109);
wjian2_43	=	z(110);
wjian2_44	=	z(111);
wjian2_45	=	z(112);


alph_f1_12	=	z(113);
alph_f1_22	=	z(114);
alph_f1_32	=	z(115);
alph_f1_42	=	z(116);

alph_f2_12	=	z(117);
alph_f2_22	=	z(118);
alph_f2_32	=	z(119);
alph_f2_42	=	z(120);


neta1_0 = z(121);
neta2_0 = z(122);

c1_11 = K(1);
c1_21 = K(2);
c1_31 = K(3);
c1_41 = K(4);
c1_12 = K(5);
c1_22 = K(6);
c1_32 = K(7);
c1_42 = K(8);

c2_11 = K(9);
c2_21 = K(10);
c2_31 = K(11);
c2_41 = K(12);
c2_12 = K(13);
c2_22 = K(14);
c2_32 = K(15);
c2_42 = K(16);


r1_11 = K(17);
r1_21 = K(18);
r1_31 = K(19);
r1_41 = K(20);

ro1_11 = K(21);
ro1_21 = K(22);
ro1_31 = K(23);
ro1_41 = K(24);

r2_11 = K(25);
r2_21 = K(26);
r2_31 = K(27);
r2_41 = K(28);

ro2_11 = K(29);
ro2_21 = K(30);
ro2_31 = K(31);
ro2_41 = K(32);

r1_12 = K(33);
r1_22 = K(34);
r1_32 = K(35);
r1_42 = K(36);

ro1_12 = K(37);
ro1_22 = K(38);
ro1_32 = K(39);
ro1_42 = K(40);

r2_12 = K(41);
r2_22 = K(42);
r2_32 = K(43);
r2_42 = K(44);

ro2_12 = K(45);
ro2_22 = K(46);
ro2_32 = K(47);
ro2_42 = K(48);


k1_1 = K(49);
k1_2 = K(50);
k1_3 = K(51);
k1_4 = K(52);

k2_1 = K(53);
k2_2 = K(54);
k2_3 = K(55);
k2_4 = K(56);


derta1 = K(57);
derta2 = K(58);
derta3 = K(59);
derta4 = K(60);

c1 = K(61);
c2 = K(62);
c3 = K(63);
c4 = K(64);

bar_x1_11 = K(65);
bar_x1_21 = K(66);
bar_x1_31 = K(67);
bar_x1_41 = K(68);

bar_x2_11 = K(69);
bar_x2_21 = K(70);
bar_x2_31 = K(71);
bar_x2_41 = K(72);

bar_x1_12 = K(73);
bar_x1_22 = K(74);
bar_x1_32 = K(75);
bar_x1_42 = K(76);

bar_x2_12 = K(77);
bar_x2_22 = K(78);
bar_x2_32 = K(79);
bar_x2_42 = K(80);

bar_alph_f1_12  = K(81);
bar_alph_f1_22  = K(82);
bar_alph_f1_32  = K(83);
bar_alph_f1_42  = K(84);

bar_alph_f2_12  = K(85);
bar_alph_f2_22  = K(86);
bar_alph_f2_32  = K(87);
bar_alph_f2_42  = K(88);

up1_1 = K(89);
up1_2 = K(90);
up1_3 = K(91);
up1_4 = K(92);

down1_1 = K(93);
down1_2 = K(94);
down1_3 = K(95);
down1_4 = K(96);

up2_1 = K(97);
up2_2 = K(98);
up2_3 = K(99);
up2_4 = K(100);

down2_1 = K(101);
down2_2 = K(102);
down2_3 = K(103);
down2_4 = K(104);

%动态领导者

B= [0 1;
    -0.1 0];

% B= [0.1 0;
%     0.1 0];

dneta1_0 = B(1,1)*neta1_0+B(1,2)*neta2_0;
dneta2_0 = B(2,1)*neta1_0+B(2,2)*neta2_0;


y1_r = neta1_0;
y2_r = neta2_0;

%%%%%%%状态触发%%%%%%%
global xt1_11 xt1_21 xt1_31 xt1_41 xt2_11 xt2_21 xt2_31 xt2_41 xt1_12 xt1_22 xt1_32 xt1_42 xt2_12 xt2_22 xt2_32 xt2_42

if t==0
    xt1_11 = x1_11;
end
if t==0
    xt1_21 = x1_21;
end
if t==0
    xt1_31 = x1_31;
end
if t==0
    xt1_41 = x1_41;
end

if abs(x1_11-xt1_11)>bar_x1_11
    xt1_11 = x1_11;
else
    xt1_11 = xt1_11;
end
if abs(x1_21-xt1_21)>bar_x1_21
    xt1_21 = x1_21;
else
   xt1_21 = xt1_21;
end
if abs(x1_31-xt1_31)>bar_x1_31
    xt1_31 = x1_31;
else
    xt1_31 = xt1_31;
end
if abs(x1_41-xt1_41)>bar_x1_41
    xt1_41 = x1_41;
else
   xt1_41 = xt1_41;
end


if t==0
    xt2_11 = x2_11;
end
if t==0
    xt2_21 = x2_21;
end
if t==0
    xt2_31 = x2_31;
end
if t==0
    xt2_41 = x2_41;
end

if abs(x2_11-xt2_11)>bar_x2_11
    xt2_11 = x2_11;
else
    xt2_11 = xt2_11;
end
if abs(x2_21-xt2_21)>bar_x2_21
    xt2_21 = x2_21;
else
   xt2_21 = xt2_21;
end
if abs(x2_31-xt2_31)>bar_x2_31
    xt2_31 = x2_31;
else
    xt2_31 = xt2_31;
end
if abs(x2_41-xt2_41)>bar_x2_41
    xt2_41 = x2_41;
else
   xt2_41 = xt2_41;
end

%%%%%%%
if t==0
    xt1_12 = x1_12;
end
if t==0
    xt1_22 = x1_22;
end
if t==0
    xt1_32 = x1_32;
end
if t==0
    xt1_42 = x1_42;
end

if abs(x1_12-xt1_12)>bar_x1_12
    xt1_12 = x1_12;
else
    xt1_12 = xt1_12;
end
if abs(x1_22-xt1_22)>bar_x1_22
    xt1_22 = x1_22;
else
   xt1_22 = xt1_22;
end
if abs(x1_32-xt1_32)>bar_x1_32
    xt1_32 = x1_32;
else
    xt1_32 = xt1_32;
end
if abs(x1_42-xt1_42)>bar_x1_42
    xt1_42 = x1_42;
else
   xt1_42 = xt1_42;
end


if t==0
    xt2_12 = x2_12;
end
if t==0
    xt2_22 = x2_22;
end
if t==0
    xt2_32 = x2_32;
end
if t==0
    xt2_42 = x2_42;
end

if abs(x2_12-xt2_12)>bar_x2_12
    xt2_12 = x2_12;
else
    xt2_12 = xt2_12;
end
if abs(x2_22-xt2_22)>bar_x2_22
    xt2_22 = x2_22;
else
   xt2_22 = xt2_22;
end
if abs(x2_32-xt2_32)>bar_x2_32
    xt2_32 = x2_32;
else
    xt2_32 = xt2_32;
end
if abs(x2_42-xt2_42)>bar_x2_42
    xt2_42 = x2_42;
else
   xt2_42 = xt2_42;
end

%%%神经网络
    g1_11(1)=exp(-(xt1_11+2)^2/2)*exp(-(xt2_11+2)^2/2); 
    g1_11(2)=exp(-(xt1_11+1)^2/2)*exp(-(xt2_11+1)^2/2);
    g1_11(3)=exp(-(xt1_11)^2/2)*exp(-(xt2_11)^2/2);
    g1_11(4)=exp(-(xt1_11-1)^2/2)*exp(-(xt2_11-1)^2/2);
    g1_11(5)=exp(-(xt1_11-2)^2/2)*exp(-(xt2_11-2)^2/2);
    
    g1_21(1)=exp(-(xt1_21+2)^2/2)*exp(-(xt2_21+2)^2/2); 
    g1_21(2)=exp(-(xt1_21+1)^2/2)*exp(-(xt2_21+1)^2/2);
    g1_21(3)=exp(-(xt1_21)^2/2)*exp(-(xt2_21)^2/2);
    g1_21(4)=exp(-(xt1_21-1)^2/2)*exp(-(xt2_21-1)^2/2);
    g1_21(5)=exp(-(xt1_21-2)^2/2)*exp(-(xt2_21-2)^2/2);

    g1_31(1)=exp(-(xt1_31+2)^2/2)*exp(-(xt2_31+2)^2/2); 
    g1_31(2)=exp(-(xt1_31+1)^2/2)*exp(-(xt2_31+1)^2/2);
    g1_31(3)=exp(-(xt1_31)^2/2)*exp(-(xt2_31)^2/2);
    g1_31(4)=exp(-(xt1_31-1)^2/2)*exp(-(xt2_31-1)^2/2);
    g1_31(5)=exp(-(xt1_31-2)^2/2)*exp(-(xt2_31-2)^2/2);
    
    g1_41(1)=exp(-(xt1_41+2)^2/2)*exp(-(xt2_41+2)^2/2); 
    g1_41(2)=exp(-(xt1_41+1)^2/2)*exp(-(xt2_41+1)^2/2);
    g1_41(3)=exp(-(xt1_41)^2/2)*exp(-(xt2_41)^2/2);
    g1_41(4)=exp(-(xt1_41-1)^2/2)*exp(-(xt2_41-1)^2/2);
    g1_41(5)=exp(-(xt1_41-2)^2/2)*exp(-(xt2_41-2)^2/2);
 
    
    fai1_11=[g1_11(1);g1_11(2);g1_11(3);g1_11(4);g1_11(5)];
    fai1_21=[g1_21(1);g1_21(2);g1_21(3);g1_21(4);g1_21(5)];
    fai1_31=[g1_31(1);g1_31(2);g1_31(3);g1_31(4);g1_31(5)];
    fai1_41=[g1_41(1);g1_41(2);g1_41(3);g1_41(4);g1_41(5)];
    
 
    %%%%%%
    e1_12(1)=exp(-(xt1_11+2)^2/2)*exp(-(xt1_12+2)^2/2)*exp(-(xt2_11+2)^2/2)*exp(-(xt2_12+2)^2/2);  
    e1_12(2)=exp(-(xt1_11+1)^2/2)*exp(-(xt1_12+1)^2/2)*exp(-(xt2_11+1)^2/2)*exp(-(xt2_12+1)^2/2);
    e1_12(3)=exp(-(xt1_11)^2/2)*exp(-(xt1_12)^2/2)*exp(-(xt2_11)^2/2)*exp(-(xt2_12)^2/2);
    e1_12(4)=exp(-(xt1_11-1)^2/2)*exp(-(xt1_12-1)^2/2)*exp(-(xt2_11-1)^2/2)*exp(-(xt2_12-1)^2/2);
    e1_12(5)=exp(-(xt1_11-2)^2/2)*exp(-(xt1_12-2)^2/2)*exp(-(xt2_11-2)^2/2)*exp(-(xt2_12-2)^2/2);

    e1_22(1)=exp(-(xt1_21+2)^2/2)*exp(-(xt2_22+2)^2/2)*exp(-(xt2_21+2)^2/2)*exp(-(xt2_22+2)^2/2);  
    e1_22(2)=exp(-(xt1_21+1)^2/2)*exp(-(xt1_22+1)^2/2)*exp(-(xt2_21+1)^2/2)*exp(-(xt2_22+1)^2/2);
    e1_22(3)=exp(-(xt1_21)^2/2)*exp(-(xt1_22)^2/2)*exp(-(xt2_21)^2/2)*exp(-(xt2_22)^2/2);
    e1_22(4)=exp(-(xt1_21-1)^2/2)*exp(-(xt1_22-1)^2/2)*exp(-(xt2_21-1)^2/2)*exp(-(xt2_22-1)^2/2);
    e1_22(5)=exp(-(xt1_21-2)^2/2)*exp(-(xt1_22-2)^2/2)*exp(-(xt2_21-2)^2/2)*exp(-(xt2_22-2)^2/2);

    e1_32(1)=exp(-(xt1_31+2)^2/2)*exp(-(xt2_32+2)^2/2)*exp(-(xt2_31+2)^2/2)*exp(-(xt2_32+2)^2/2);  
    e1_32(2)=exp(-(xt1_31+1)^2/2)*exp(-(xt1_32+1)^2/2)*exp(-(xt2_31+1)^2/2)*exp(-(xt2_32+1)^2/2);
    e1_32(3)=exp(-(xt1_31)^2/2)*exp(-(xt1_32)^2/2)*exp(-(xt2_31)^2/2)*exp(-(xt2_32)^2/2);
    e1_32(4)=exp(-(xt1_31-1)^2/2)*exp(-(xt1_32-1)^2/2)*exp(-(xt2_31-1)^2/2)*exp(-(xt2_32-1)^2/2);
    e1_32(5)=exp(-(xt1_31-2)^2/2)*exp(-(xt1_32-2)^2/2)*exp(-(xt2_31-2)^2/2)*exp(-(xt2_32-2)^2/2);
    
    e1_42(1)=exp(-(xt1_41+2)^2/2)*exp(-(xt2_42+2)^2/2)*exp(-(xt2_41+2)^2/2)*exp(-(xt2_42+2)^2/2);  
    e1_42(2)=exp(-(xt1_41+1)^2/2)*exp(-(xt1_42+1)^2/2)*exp(-(xt2_41+1)^2/2)*exp(-(xt2_42+1)^2/2);
    e1_42(3)=exp(-(xt1_41)^2/2)*exp(-(xt1_42)^2/2)*exp(-(xt2_41)^2/2)*exp(-(xt2_42)^2/2);
    e1_42(4)=exp(-(xt1_41-1)^2/2)*exp(-(xt1_42-1)^2/2)*exp(-(xt2_41-1)^2/2)*exp(-(xt2_42-1)^2/2);
    e1_42(5)=exp(-(xt1_41-2)^2/2)*exp(-(xt1_42-2)^2/2)*exp(-(xt2_41-2)^2/2)*exp(-(xt2_42-2)^2/2);
   
    fai1_12=[e1_12(1);e1_12(2);e1_12(3);e1_12(4);e1_12(5)];
    fai1_22=[e1_22(1);e1_22(2);e1_22(3);e1_22(4);e1_22(5)];
    fai1_32=[e1_32(1);e1_32(2);e1_32(3);e1_32(4);e1_32(5)];
    fai1_42=[e1_42(1);e1_42(2);e1_42(3);e1_42(4);e1_42(5)];
    
    
%队形之间的距离
n1_1 = 0.05*sin(0.1*t);
n1_2 = 0.05*sin(0.1*t);
n1_3 = 0.05*sin(0.1*t);
n1_4 = 0.05*sin(0.1*t);

n2_1 = -0.4-0.05*cos(0.1*t);
n2_2 = -0.2-0.05*cos(0.1*t);
n2_3 = 0.2-0.05*cos(0.1*t);
n2_4 = 0.4-0.05*cos(0.1*t);


%%%导数
dn1_1 = 0.005*cos(0.1*t);
dn1_2 = 0.005*cos(0.1*t);
dn1_3 = 0.005*cos(0.1*t);
dn1_4 = 0.005*cos(0.1*t);

dn2_1 = 0.005*sin(0.1*t);
dn2_2 = 0.005*sin(0.1*t);
dn2_3 = 0.005*sin(0.1*t);
dn2_4 = 0.005*sin(0.1*t);


%%%分布式弹性估计器
%%%
dneta1_1 = -derta1*(neta1_1-cota1_11)+dn1_1+B(1,1)*(cota1_11-n1_1)+B(1,2)*(cota2_11-n2_1);
dneta2_1 = -derta1*(neta2_1-cota2_11)+dn2_1+B(2,1)*(cota1_11-n1_1)+B(2,2)*(cota2_11-n2_1);

dneta1_2 = -derta2*(neta1_2-cota1_21)+dn1_2+B(1,1)*(cota1_21-n1_2)+B(1,2)*(cota2_21-n2_2);
dneta2_2 = -derta2*(neta2_2-cota2_21)+dn2_2+B(2,1)*(cota1_21-n1_2)+B(2,2)*(cota2_21-n2_2);

dneta1_3 = -derta3*(neta1_3-cota1_31)+dn1_3+B(1,1)*(cota1_31-n1_3)+B(1,2)*(cota2_31-n2_3);
dneta2_3 = -derta3*(neta2_3-cota2_31)+dn2_3+B(2,1)*(cota1_31-n1_3)+B(2,2)*(cota2_31-n2_3);

dneta1_4 = -derta4*(neta1_4-cota1_41)+dn1_4+B(1,1)*(cota1_41-n1_4)+B(1,2)*(cota2_41-n2_4);
dneta2_4 = -derta4*(neta2_4-cota2_41)+dn2_4+B(2,1)*(cota1_41-n1_4)+B(2,2)*(cota2_41-n2_4);


%%%
dcota1_11 = B(1,1)*(cota1_11-n1_1)+B(1,2)*(cota2_11-n2_1)-c1*(A(1,1)*(cota1_11-n1_1-cota1_11+n1_1)+A(1,2)*(cota1_11-n1_1-cota1_21+n1_2)+A(1,3)*(cota1_11-n1_1-cota1_31+n1_3)+A(1,4)*(cota1_11-n1_1-cota1_41+n1_4)+b(1)*(cota1_11-y1_r-n1_1))+dn1_1;
dcota2_11 = B(2,1)*(cota1_11-n1_1)+B(2,2)*(cota2_11-n2_1)-c1*(A(1,1)*(cota2_11-n2_1-cota2_11+n2_1)+A(1,2)*(cota2_11-n2_1-cota2_21+n2_2)+A(1,3)*(cota2_11-n2_1-cota2_31+n2_3)+A(1,4)*(cota2_11-n2_1-cota2_41+n2_4)+b(1)*(cota2_11-y2_r-n2_1))+dn2_1;

dcota1_21 = B(1,1)*(cota1_21-n1_2)+B(1,2)*(cota2_21-n2_2)-c2*(A(2,1)*(cota1_21-n1_2-cota1_11+n1_1)+A(2,2)*(cota1_21-n1_2-cota1_21+n1_2)+A(2,3)*(cota1_21-n1_2-cota1_31+n1_3)+A(2,4)*(cota1_21-n1_2-cota1_41+n1_4)+b(2)*(cota1_21-y1_r-n1_2))+dn1_2;
dcota2_21 = B(2,1)*(cota1_21-n1_2)+B(2,2)*(cota2_21-n2_2)-c2*(A(2,1)*(cota2_21-n2_2-cota2_11+n2_1)+A(2,2)*(cota2_21-n2_2-cota2_21+n2_2)+A(2,3)*(cota2_21-n2_2-cota2_31+n2_3)+A(2,4)*(cota2_21-n2_2-cota2_41+n2_4)+b(2)*(cota2_21-y2_r-n2_2))+dn2_2;

dcota1_31 = B(1,1)*(cota1_31-n1_3)+B(1,2)*(cota2_31-n2_3)-c3*(A(3,1)*(cota1_31-n1_3-cota1_11+n1_1)+A(3,2)*(cota1_31-n1_3-cota1_21+n1_2)+A(3,3)*(cota1_31-n1_3-cota1_31+n1_3)+A(3,4)*(cota1_31-n1_3-cota1_41+n1_4)+b(3)*(cota1_31-y1_r-n1_3))+dn1_3;
dcota2_31 = B(2,1)*(cota1_31-n1_3)+B(2,2)*(cota2_31-n2_3)-c3*(A(3,1)*(cota2_31-n2_3-cota2_11+n2_1)+A(3,2)*(cota2_31-n2_3-cota2_21+n2_2)+A(3,3)*(cota2_31-n2_3-cota2_31+n2_3)+A(3,4)*(cota2_31-n2_3-cota2_41+n2_4)+b(3)*(cota2_31-y2_r-n2_3))+dn2_3;

dcota1_41 = B(1,1)*(cota1_41-n1_4)+B(1,2)*(cota2_41-n2_4)-c4*(A(4,1)*(cota1_41-n1_4-cota1_11+n1_1)+A(4,2)*(cota1_41-n1_4-cota1_21+n1_2)+A(4,3)*(cota1_41-n1_4-cota1_31+n1_3)+A(4,4)*(cota1_41-n1_4-cota1_41+n1_4)+b(4)*(cota1_41-y1_r-n1_4))+dn1_4;
dcota2_41 = B(2,1)*(cota1_41-n1_4)+B(2,2)*(cota2_41-n2_4)-c4*(A(4,1)*(cota2_41-n2_4-cota2_11+n2_1)+A(4,2)*(cota2_41-n2_4-cota2_21+n2_2)+A(4,3)*(cota2_41-n2_4-cota2_31+n2_3)+A(4,4)*(cota2_41-n2_4-cota2_41+n2_4)+b(4)*(cota2_41-y2_r-n2_4))+dn2_4;



%坐标变换
Z1_11 = xt1_11-neta1_1;
Z1_21 = xt1_21-neta1_2;
Z1_31 = xt1_31-neta1_3;
Z1_41 = xt1_41-neta1_4;

Z2_11 = xt2_11-neta2_1;
Z2_21 = xt2_21-neta2_2;
Z2_31 = xt2_31-neta2_3;
Z2_41 = xt2_41-neta2_4;

%%%
Z1_12=xt1_12-alph_f1_12;
Z1_22=xt1_22-alph_f1_22;
Z1_32=xt1_32-alph_f1_32;
Z1_42=xt1_42-alph_f1_42;

Z2_12=xt2_12-alph_f2_12;
Z2_22=xt2_22-alph_f2_22;
Z2_32=xt2_32-alph_f2_32;
Z2_42=xt2_42-alph_f2_42;


%自适应参数1
dgjian1_11 = r1_11*Z1_11*g1_11(1)-ro1_11*gjian1_11;
dgjian1_12 = r1_11*Z1_11*g1_11(2)-ro1_11*gjian1_12;
dgjian1_13 = r1_11*Z1_11*g1_11(3)-ro1_11*gjian1_13;
dgjian1_14 = r1_11*Z1_11*g1_11(4)-ro1_11*gjian1_14;
dgjian1_15 = r1_11*Z1_11*g1_11(5)-ro1_11*gjian1_15;

dgjian1_21 = r1_21*Z1_21*g1_21(1)-ro1_21*gjian1_21;
dgjian1_22 = r1_21*Z1_21*g1_21(2)-ro1_21*gjian1_22;
dgjian1_23 = r1_21*Z1_21*g1_21(3)-ro1_21*gjian1_23;
dgjian1_24 = r1_21*Z1_21*g1_21(4)-ro1_21*gjian1_24;
dgjian1_25 = r1_21*Z1_21*g1_21(5)-ro1_21*gjian1_25;

dgjian1_31 = r1_31*Z1_31*g1_31(1)-ro1_31*gjian1_31;
dgjian1_32 = r1_31*Z1_31*g1_31(2)-ro1_31*gjian1_32;
dgjian1_33 = r1_31*Z1_31*g1_31(3)-ro1_31*gjian1_33;
dgjian1_34 = r1_31*Z1_31*g1_31(4)-ro1_31*gjian1_34;
dgjian1_35 = r1_31*Z1_31*g1_31(5)-ro1_31*gjian1_35;

dgjian1_41 = r1_41*Z1_41*g1_41(1)-ro1_41*gjian1_41;
dgjian1_42 = r1_41*Z1_41*g1_41(2)-ro1_41*gjian1_42;
dgjian1_43 = r1_41*Z1_41*g1_41(3)-ro1_41*gjian1_43;
dgjian1_44 = r1_41*Z1_41*g1_41(4)-ro1_41*gjian1_44;
dgjian1_45 = r1_41*Z1_41*g1_41(5)-ro1_41*gjian1_45;

%%%%
dgjian2_11 = r2_11*Z2_11*g1_11(1)-ro2_11*gjian2_11;
dgjian2_12 = r2_11*Z2_11*g1_11(2)-ro2_11*gjian2_12;
dgjian2_13 = r2_11*Z2_11*g1_11(3)-ro2_11*gjian2_13;
dgjian2_14 = r2_11*Z2_11*g1_11(4)-ro2_11*gjian2_14;
dgjian2_15 = r2_11*Z2_11*g1_11(5)-ro2_11*gjian2_15;

dgjian2_21 = r2_21*Z2_21*g1_21(1)-ro2_21*gjian2_21;
dgjian2_22 = r2_21*Z2_21*g1_21(2)-ro2_21*gjian2_22;
dgjian2_23 = r2_21*Z2_21*g1_21(3)-ro2_21*gjian2_23;
dgjian2_24 = r2_21*Z2_21*g1_21(4)-ro2_21*gjian2_24;
dgjian2_25 = r2_21*Z2_21*g1_21(5)-ro2_21*gjian2_25;

dgjian2_31 = r2_31*Z2_31*g1_31(1)-ro2_31*gjian2_31;
dgjian2_32 = r2_31*Z2_31*g1_31(2)-ro2_31*gjian2_32;
dgjian2_33 = r2_31*Z2_31*g1_31(3)-ro2_31*gjian2_33;
dgjian2_34 = r2_31*Z2_31*g1_31(4)-ro2_31*gjian2_34;
dgjian2_35 = r2_31*Z2_31*g1_31(5)-ro2_31*gjian2_35;

dgjian2_41 = r2_41*Z2_41*g1_41(1)-ro2_41*gjian2_41;
dgjian2_42 = r2_41*Z2_41*g1_41(2)-ro2_41*gjian2_42;
dgjian2_43 = r2_41*Z2_41*g1_41(3)-ro2_41*gjian2_43;
dgjian2_44 = r2_41*Z2_41*g1_41(4)-ro2_41*gjian2_44;
dgjian2_45 = r2_41*Z2_41*g1_41(5)-ro2_41*gjian2_45;


%自适应参数2
dwjian1_11 = r1_12*Z1_12*e1_12(1)-ro1_12*wjian1_11;
dwjian1_12 = r1_12*Z1_12*e1_12(2)-ro1_12*wjian1_12;
dwjian1_13 = r1_12*Z1_12*e1_12(3)-ro1_12*wjian1_13;
dwjian1_14 = r1_12*Z1_12*e1_12(4)-ro1_12*wjian1_14;
dwjian1_15 = r1_12*Z1_12*e1_12(5)-ro1_12*wjian1_15;

dwjian1_21 = r1_22*Z1_22*e1_22(1)-ro1_22*wjian1_21;
dwjian1_22 = r1_22*Z1_22*e1_22(2)-ro1_22*wjian1_22;
dwjian1_23 = r1_22*Z1_22*e1_22(3)-ro1_22*wjian1_23;
dwjian1_24 = r1_22*Z1_22*e1_22(4)-ro1_22*wjian1_24;
dwjian1_25 = r1_22*Z1_22*e1_22(5)-ro1_22*wjian1_25;

dwjian1_31 = r1_32*Z1_32*e1_32(1)-ro1_32*wjian1_31;
dwjian1_32 = r1_32*Z1_32*e1_32(2)-ro1_32*wjian1_32;
dwjian1_33 = r1_32*Z1_32*e1_32(3)-ro1_32*wjian1_33;
dwjian1_34 = r1_32*Z1_32*e1_32(4)-ro1_32*wjian1_34;
dwjian1_35 = r1_32*Z1_32*e1_32(5)-ro1_32*wjian1_35;

dwjian1_41 = r1_42*Z1_42*e1_42(1)-ro1_42*wjian1_41;
dwjian1_42 = r1_42*Z1_42*e1_42(2)-ro1_42*wjian1_42;
dwjian1_43 = r1_42*Z1_42*e1_42(3)-ro1_42*wjian1_43;
dwjian1_44 = r1_42*Z1_42*e1_42(4)-ro1_42*wjian1_44;
dwjian1_45 = r1_42*Z1_42*e1_42(5)-ro1_42*wjian1_45;

%%%%
dwjian2_11 = r2_12*Z2_12*e1_12(1)-ro2_12*wjian2_11;
dwjian2_12 = r2_12*Z2_12*e1_12(2)-ro2_12*wjian2_12;
dwjian2_13 = r2_12*Z2_12*e1_12(3)-ro2_12*wjian2_13;
dwjian2_14 = r2_12*Z2_12*e1_12(4)-ro2_12*wjian2_14;
dwjian2_15 = r2_12*Z2_12*e1_12(5)-ro2_12*wjian2_15;

dwjian2_21 = r2_22*Z2_22*e1_22(1)-ro2_22*wjian2_21;
dwjian2_22 = r2_22*Z2_22*e1_22(2)-ro2_22*wjian2_22;
dwjian2_23 = r2_22*Z2_22*e1_22(3)-ro2_22*wjian2_23;
dwjian2_24 = r2_22*Z2_22*e1_22(4)-ro2_22*wjian2_24;
dwjian2_25 = r2_22*Z2_22*e1_22(5)-ro2_22*wjian2_25;

dwjian2_31 = r2_32*Z2_32*e1_32(1)-ro2_32*wjian2_31;
dwjian2_32 = r2_32*Z2_32*e1_32(2)-ro2_32*wjian2_32;
dwjian2_33 = r2_32*Z2_32*e1_32(3)-ro2_32*wjian2_33;
dwjian2_34 = r2_32*Z2_32*e1_32(4)-ro2_32*wjian2_34;
dwjian2_35 = r2_32*Z2_32*e1_32(5)-ro2_32*wjian2_35;

dwjian2_41 = r2_42*Z2_42*e1_42(1)-ro2_42*wjian2_41;
dwjian2_42 = r2_42*Z2_42*e1_42(2)-ro2_42*wjian2_42;
dwjian2_43 = r2_42*Z2_42*e1_42(3)-ro2_42*wjian2_43;
dwjian2_44 = r2_42*Z2_42*e1_42(4)-ro2_42*wjian2_44;
dwjian2_45 = r2_42*Z2_42*e1_42(5)-ro2_42*wjian2_45;


%虚拟控制器1
R1_1 = dn1_1-(B(1,1)*n1_1+B(1,2)*n2_1);
R2_1 = dn2_1-(B(2,1)*n1_1+B(2,2)*n2_1);


R1_2 = dn1_2-(B(1,1)*n1_2+B(1,2)*n2_2);
R2_2 = dn2_2-(B(2,1)*n1_2+B(2,2)*n2_2);


R1_3 = dn1_3-(B(1,1)*n1_3+B(1,2)*n2_3);
R2_3 = dn2_3-(B(2,1)*n1_3+A(2,2)*n2_3);


R1_4 = dn1_4-(B(1,1)*n1_4+B(1,2)*n2_4);
R2_4 = dn2_4-(B(2,1)*n1_4+B(2,2)*n2_4);

%滤波器的事件触发
global alph_tf1_12 alph_tf1_22 alph_tf1_32 alph_tf1_42 alph_tf2_12 alph_tf2_22 alph_tf2_32 alph_tf2_42

if t==0
    alph_tf1_12 = alph_f1_12;
end
if t==0
    alph_tf1_22 = alph_f1_22;
end
if t==0
    alph_tf1_32 = alph_f1_32;
end
if t==0
    alph_tf1_42 = alph_f1_42;
end


if abs(alph_f1_12-alph_tf1_12)>bar_alph_f1_12
    alph_tf1_12 = alph_f1_12;
else
     alph_tf1_12 =  alph_tf1_12;
end
if abs(alph_f1_22-alph_tf1_22)>bar_alph_f1_22
    alph_tf1_22 = alph_f1_22;
else
     alph_tf1_22 =  alph_tf1_22;
end
if abs(alph_f1_32-alph_tf1_32)>bar_alph_f1_32
    alph_tf1_32 = alph_f1_32;
else
     alph_tf1_32 =  alph_tf1_32;
end
if abs(alph_f1_42-alph_tf1_42)>bar_alph_f1_42
    alph_tf1_42 = alph_f1_42;
else
     alph_tf1_42 =  alph_tf1_42;
end
%%%%%%
if t==0
    alph_tf2_12 = alph_f2_12;
end
if t==0
    alph_tf2_22 = alph_f2_22;
end
if t==0
    alph_tf2_32 = alph_f2_32;
end
if t==0
    alph_tf2_42 = alph_f2_42;
end


if abs(alph_f2_12-alph_tf2_12)>bar_alph_f2_12
    alph_tf2_12 = alph_f2_12;
else
     alph_tf2_12 =  alph_tf2_12;
end
if abs(alph_f2_22-alph_tf2_22)>bar_alph_f2_22
    alph_tf2_22 = alph_f2_22;
else
     alph_tf2_22 =  alph_tf2_22;
end
if abs(alph_f2_32-alph_tf2_32)>bar_alph_f2_32
    alph_tf2_32 = alph_f2_32;
else
     alph_tf2_32 =  alph_tf2_32;
end
if abs(alph_f2_42-alph_tf2_42)>bar_alph_f2_42
    alph_tf2_42 = alph_f2_42;
else
     alph_tf2_42 =  alph_tf2_42;
end


alph1_11=-c1_11*Z1_11-2*Z1_11-derta1*neta1_1+R1_1+B(1,1)*cota1_11+B(1,2)*cota2_11-([gjian1_11 gjian1_12 gjian1_13 gjian1_14 gjian1_15]*fai1_11);
alph2_11=-c2_11*Z2_11-2*Z2_11-derta1*neta2_1+R2_1+B(2,1)*cota1_11+B(2,2)*cota2_11-([gjian2_11 gjian2_12 gjian2_13 gjian2_14 gjian2_15]*fai1_11);

alph1_21=-c1_21*Z1_21-2*Z1_21-derta2*neta1_2+R1_2+B(1,1)*cota1_21+B(1,2)*cota2_21-([gjian1_21 gjian1_22 gjian1_23 gjian1_24 gjian1_25]*fai1_21);
alph2_21=-c2_21*Z2_21-2*Z2_21-derta2*neta2_2+R2_2+B(2,1)*cota1_21+B(2,2)*cota2_21-([gjian2_21 gjian2_22 gjian2_23 gjian2_24 gjian2_25]*fai1_21);


alph1_31=-c1_31*Z1_31-2*Z1_31-derta3*neta1_3+R1_3+B(1,1)*cota1_31+B(1,2)*cota2_31-([gjian1_31 gjian1_32 gjian1_33 gjian1_34 gjian1_35]*fai1_31);
alph2_31=-c2_31*Z2_31-2*Z2_31-derta3*neta2_3+R2_3+B(2,1)*cota1_31+B(2,2)*cota2_31-([gjian2_31 gjian2_32 gjian2_33 gjian2_34 gjian2_35]*fai1_31);

alph1_41=-c1_41*Z1_41-2*Z1_41-derta4*neta1_4+R1_4+B(1,1)*cota1_41+B(1,2)*cota2_41-([gjian1_41 gjian1_42 gjian1_43 gjian1_44 gjian1_45]*fai1_41);
alph2_41=-c2_41*Z2_41-2*Z2_41-derta4*neta2_4+R2_4+B(2,1)*cota1_41+B(2,2)*cota2_41-([gjian2_41 gjian2_42 gjian2_43 gjian2_44 gjian2_45]*fai1_41);




%一阶滤波器
w1_12 =alph_tf1_12-alph1_11;
dalph_f1_12 = -w1_12/k1_1;
w1_22 =alph_tf1_22-alph1_21;
dalph_f1_22 = -w1_22/k1_2;
w1_32 =alph_tf1_32-alph1_31;
dalph_f1_32 = -w1_32/k1_3;
w1_42 =alph_tf1_42-alph1_41;
dalph_f1_42 = -w1_42/k1_4;

w2_12 =alph_tf2_12-alph2_11;
dalph_f2_12 = -w2_12/k2_1;
w2_22 =alph_tf2_22-alph2_21;
dalph_f2_22 = -w2_22/k2_2;
w2_32 =alph_tf2_32-alph2_31;
dalph_f2_32 = -w2_32/k2_3;
w2_42 =alph_tf2_42-alph2_41;
dalph_f2_42 = -w2_42/k2_4;


%虚拟控制器2
u1_1=-c1_12*Z1_12-2*Z1_12+dalph_f1_12-([wjian1_11 wjian1_12 wjian1_13 wjian1_14 wjian1_15]*fai1_12);
u1_2=-c1_22*Z1_22-2*Z1_22+dalph_f1_22-([wjian1_21 wjian1_22 wjian1_23 wjian1_24 wjian1_25]*fai1_22);
u1_3=-c1_32*Z1_32-2*Z1_32+dalph_f1_32-([wjian1_31 wjian1_32 wjian1_33 wjian1_34 wjian1_35]*fai1_32);
u1_4=-c1_42*Z1_42-2*Z1_42+dalph_f1_42-([wjian1_41 wjian1_42 wjian1_43 wjian1_44 wjian1_45]*fai1_42);

u2_1=-c2_12*Z2_12-2*Z2_12+dalph_f2_12-([wjian2_11 wjian2_12 wjian2_13 wjian2_14 wjian2_15]*fai1_12);
u2_2=-c2_22*Z2_22-2*Z2_22+dalph_f2_22-([wjian2_21 wjian2_22 wjian2_23 wjian2_24 wjian2_25]*fai1_22);
u2_3=-c2_32*Z2_32-2*Z2_32+dalph_f2_32-([wjian2_31 wjian2_32 wjian2_33 wjian2_34 wjian2_35]*fai1_32);
u2_4=-c2_42*Z2_42-2*Z2_42+dalph_f2_42-([wjian2_41 wjian2_42 wjian2_43 wjian2_44 wjian2_45]*fai1_42);


%饱和参数
u1_M1 = up1_1;
u1_m1 = down1_1; 
u2_M1 = up2_1;
u2_m1 = down2_1; 

u1_M2 = up1_2;
u1_m2 = down1_2; 
u2_M2 = up2_2;
u2_m2 = down2_2; 

u1_M3 = up1_3;
u1_m3 = down1_3; 
u2_M3 = up2_3;
u2_m3 = down2_3; 

u1_M4 = up1_4;
u1_m4 = down1_4; 
u2_M4 = up2_4;
u2_m4 = down2_4;

%饱和模型
if u1_1>=u1_M1
    Su1_1 = u1_M1;
elseif u1_1 <= -u1_m1
    Su1_1 = -u1_m1;
else
    Su1_1 = u1_1;
end
if u2_1>=u2_M1
    Su2_1 = u2_M1;
elseif u2_1 <= -u2_m1
    Su2_1 = -u2_m1;
else
    Su2_1 = u2_1;
end

if u1_2>=u1_M2
    Su1_2 = u1_M2;
elseif u1_2 <= -u1_m2
    Su1_2 = -u1_m2;
else
    Su1_2 = u1_2;
end
if u2_2>=u2_M2
    Su2_2 = u2_M2;
elseif u2_2 <= -u2_m2
    Su2_2 = -u2_m2;
else
    Su2_2 = u2_2;
end

if u1_3>=u1_M3
    Su1_3 = u1_M3;
elseif u1_3 <= -u1_m3
    Su1_3 = -u1_m3;
else
    Su1_3 = u1_3;
end
if u2_3>=u2_M3
    Su2_3 = u2_M3;
elseif u2_3 <= -u2_m3
    Su2_3 = -u2_m3;
else
    Su2_3 = u2_3;
end

if u1_4>=u1_M4
    Su1_4 = u1_M4;
elseif u1_4 <= -u1_m4
    Su1_4 = -u1_m4;
else
    Su1_4 = u1_4;
end
if u2_4>=u2_M4
    Su2_4 = u2_M4;
elseif u2_4 <= -u2_m4
    Su2_4 = -u2_m4;
else
    Su2_4 = u2_4;
end


%系统模型
dx1_11 = (1/3)*((3+0.5*sin(t))*x1_12+(0.5+0.1*cos(x1_11))*x2_12)+0.5*exp(0.5*1*x1_11)*sin(x1_11);
dx1_21 = (1/3)*((3+0.5*sin(t))*x1_22+(0.5+0.1*cos(x1_21))*x2_22)+0.5*exp(0.5*2*x1_21)*sin(x1_21);
dx1_31 = (1/3)*((3+0.5*sin(t))*x1_32+(0.5+0.1*cos(x1_31))*x2_32)+0.5*exp(0.5*3*x1_31)*sin(x1_31);
dx1_41 = (1/3)*((3+0.5*sin(t))*x1_42+(0.5+0.1*cos(x1_41))*x2_42)+0.5*exp(0.5*4*x1_41)*sin(x1_41);

dx2_11 = (1/3)*((2+0.5*sin(x2_11))*x1_12+3*x2_12)+0.5*exp(0.5*1*x2_11)*cos(x2_11);
dx2_21 = (1/3)*((2+0.5*sin(x2_21))*x1_22+3*x2_22)+0.5*exp(0.5*2*x2_21)*cos(x2_21);
dx2_31 = (1/3)*((2+0.5*sin(x2_31))*x1_32+3*x2_32)+0.5*exp(0.5*3*x2_31)*cos(x2_31);
dx2_41 = (1/3)*((2+0.5*sin(x2_41))*x1_42+3*x2_42)+0.5*exp(0.5*4*x2_41)*cos(x2_41);

f1_12 = cos(0.1*x1_12*x1_11)+x1_12^2*sin(t);
f1_22 = cos(0.1*x1_22*x1_21)+x1_22^2*sin(t);
f1_32 = cos(0.1*x1_32*x1_31)+x1_32^2*sin(t);
f1_42 = cos(0.1*x1_42*x1_41)+x1_42^2*sin(t);

f2_12 = sin(0.2*x2_12*x2_11)+x2_12^2*cos(t);
f2_22 = sin(0.2*x2_22*x2_21)+x2_12^2*cos(t);
f2_32 = sin(0.2*x2_32*x2_31)+x2_12^2*cos(t);
f2_42 = sin(0.2*x2_42*x2_41)+x2_12^2*cos(t);


dx1_12 = Su1_1+f1_12;
dx1_22 = Su1_2+f1_22;
dx1_32 = Su1_3+f1_32;
dx1_42 = Su1_4+f1_42;

dx2_12 = Su2_1+f2_12;
dx2_22 = Su2_2+f2_22;
dx2_32 = Su2_3+f2_32;
dx2_42 = Su2_4+f2_42;

dz=[dx1_11;
    dx1_21;
    dx1_31;
    dx1_41;
    dx1_12;
    dx1_22;
    dx1_32;
    dx1_42;
    dx2_11;
    dx2_21;
    dx2_31;
    dx2_41;
    dx2_12;
    dx2_22;
    dx2_32;
    dx2_42;
    dneta1_1;
    dneta1_2;
    dneta1_3;
    dneta1_4;
    dneta2_1;
    dneta2_2;
    dneta2_3;
    dneta2_4;
    dcota1_11;
    dcota1_21;
    dcota1_31;
    dcota1_41;
    dcota2_11;
    dcota2_21;
    dcota2_31;
    dcota2_41;
    dgjian1_11;
    dgjian1_12;
    dgjian1_13;
    dgjian1_14;
    dgjian1_15;
    dgjian1_21;
    dgjian1_22;
    dgjian1_23;
    dgjian1_24;
    dgjian1_25;
    dgjian1_31;
    dgjian1_32;
    dgjian1_33;
    dgjian1_34;
    dgjian1_35;
    dgjian1_41;
    dgjian1_42;
    dgjian1_43;
    dgjian1_44;
    dgjian1_45;
    dgjian2_11;
    dgjian2_12;
    dgjian2_13;
    dgjian2_14;
    dgjian2_15;
    dgjian2_21;
    dgjian2_22;
    dgjian2_23;
    dgjian2_24;
    dgjian2_25;
    dgjian2_31;
    dgjian2_32;
    dgjian2_33;
    dgjian2_34;
    dgjian2_35;
    dgjian2_41;
    dgjian2_42;
    dgjian2_43;
    dgjian2_44;
    dgjian2_45;
    dwjian1_11;
    dwjian1_12;
    dwjian1_13;
    dwjian1_14;
    dwjian1_15;
    dwjian1_21;
    dwjian1_22;
    dwjian1_23;
    dwjian1_24;
    dwjian1_25;
    dwjian1_31;
    dwjian1_32;
    dwjian1_33;
    dwjian1_34;
    dwjian1_35;
    dwjian1_41;
    dwjian1_42;
    dwjian1_43;
    dwjian1_44;
    dwjian1_45;
    dwjian2_11;
    dwjian2_12;
    dwjian2_13;
    dwjian2_14;
    dwjian2_15;
    dwjian2_21;
    dwjian2_22;
    dwjian2_23;
    dwjian2_24;
    dwjian2_25;
    dwjian2_31;
    dwjian2_32;
    dwjian2_33;
    dwjian2_34;
    dwjian2_35;
    dwjian2_41;
    dwjian2_42;
    dwjian2_43;
    dwjian2_44;
    dwjian2_45;
    dalph_f1_12;
    dalph_f1_22;
    dalph_f1_32;
    dalph_f1_42;
    dalph_f2_12;
    dalph_f2_22;
    dalph_f2_32;
    dalph_f2_42;
    dneta1_0;
    dneta2_0;
   ];


