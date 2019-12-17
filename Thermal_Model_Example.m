%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% [T,p]=heat1d_mex(H,rhos,rhod,ks,kd,lattitude,albedo,outtime)
% T: The output temperature matrix;
% p: The output properties of each layer, including three columns which are depth, thickness and density
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%% 
H=0.07;                            %h-parameter [m]
rhos=1100;                         %Surface density  [kg.m-3]
rhod=1800;                         %Density at depth [kg.m-3]
ks=8.0e-4;                         %ks is surface conductivity [W.m-1.K-1]
kd=3.8e-3;                         %Thermal conductivity at depth  [W.m-1.K-1]
latitude=0;                        %Latitude [deg]
CHI=2.7;                           %Regolith radiative conductivity parameter [unitless]
Malbedo=0.07;                      %Typical mare albedo 
Halbedo=0.12;                      %Typical highland albedo
outtime=0:0.02:24;                 %Times to output [hr]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

[T,p]=heat1d_mex(H, rhos, rhod, ks, kd, CHI, latitude, Halbedo, outtime); 

figure;
plot(max(T'),p(:,1),'r',min(T'),p(:,1),'r',mean(T'),p(:,1),'r');
 xlabel('Temperature (K)','interpreter','latex');
 ylabel('Depth (m)','interpreter','latex');
 set(gca,'YDir','reverse');

figure;
plot(outtime,T(1,:),'k','linewidth',1.5);
 axis([0, 24, 50, 400]);
 xlabel('Local Time','interpreter','latex');
 ylabel('Temperature (K)','interpreter','latex');
 set(gca,'xtick',0:6:24,'xticklabel',{'12:00','18:00','00:00','06:00','12:00'});


  
