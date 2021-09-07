close all,clear;clc;
x=0;y=0;theta=pi/2;
v=1;steering=0;dt=1;
vehi=[0,1,1,-1,-1,0;2,1,-1,-1,1,2];
D=.5;
theta1=theta-pi/2;
R=[cos(theta1),-sin(theta1);sin(theta1),cos(theta1)];
newvehi=R*vehi;
trajectory=[x;y];
hvehi=plot(newvehi(1,:)+x,newvehi(2,:)+y,trajectory(1,:),trajectory(2,:),'r:');
axis([-20,20,-20,20]);axis square;
hsteering=uicontrol('style','slider','max',90,'min',-90,'value',steering);
set(hsteering,'position',[20,20,80,20]);
hv=uicontrol('style','slider','max',1,'min',0,'value',v);
set(hv,'position',[20,70,80,20]);
hsteeringtext=uicontrol('style','text','string', [num2str(steering),'deg'],'position',[20,40,100,30]);
hvtext=uicontrol('style','text','string',[num2str(v),'m/s'],'position',[20,90,100,30]);
hstep=uicontrol ('position',[20,120,80,30],'string',[,num2str(dt),'s/push']);
set(hsteering,'callback','flag=1;vehi1sub;'); 
set(hv,'callback','flag=2;vehi1sub');
set(hstep,'callback','flag=3;vehi1sub;');