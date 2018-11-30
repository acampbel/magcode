%% Demo for magnetdraw

function demo_magnetdraw()

%% Plot setup

figure(1); clf; hold on
view(3);
axis equal
camlight

title('Cuboid and cylinder magnet')
xlabel('x');
ylabel('y');
zlabel('z');


%% Cuboid

mag_cuboid = magnetdefine(...
  'type','cuboid',...
  'dim',[0.1 0.2 0.3],...
  'magdir',[0 0 5],...
  'magn',1);

magnetdraw(mag_cuboid,[-0.1; 0; 0]);

mag_cuboid = magnetdefine(...
  'type','cuboid',...
  'dim',[0.1 0.2 0.3],...
  'magdir',[5 0 0],...
  'magn',1);

magnetdraw(mag_cuboid,[-0.3; 0; 0]);

mag_cuboid = magnetdefine(...
  'type','cuboid',...
  'dim',[0.1 0.2 0.3],...
  'magdir',[5 0 5],...
  'magn',1);

magnetdraw(mag_cuboid,[-0.5; 0; 0]);

mag_cuboid = magnetdefine(...
  'type','cuboid',...
  'dim',[0.1 0.2 0.3],...
  'magdir',[5 0 1],...
  'magn',1);

magnetdraw(mag_cuboid,[-0.7; 0; 0]);

mag_cuboid = magnetdefine(...
  'type','cuboid',...
  'dim',[0.1 0.2 0.3],...
  'magdir',[5 2 1],...
  'magn',1);

magnetdraw(mag_cuboid,[-0.9; 0; 0]);


%% Cylinder

mag_cyl = magnetdefine(...
  'type','cylinder',...
  'dim',[0.075 0.3],...
  'magdir',[0 0 5],...
  'magn',1);

magnetdraw(mag_cyl,[0.2; 0; 0]);

mag_cyl = magnetdefine(...
  'type','cylinder',...
  'dim',[0.075 0.3],...
  'magdir',[5 0 0],...
  'magn',1);

magnetdraw(mag_cyl,[0.4; 0; 0]);

mag_cyl = magnetdefine(...
  'type','cylinder',...
  'dim',[0.075 0.3],...
  'magdir',[5 0 5],...
  'magn',1);

magnetdraw(mag_cyl,[0.6; 0; 0]);

mag_cyl = magnetdefine(...
  'type','cylinder',...
  'dim',[0.075 0.3],...
  'magdir',[5 0 1],...
  'magn',1);

magnetdraw(mag_cyl,[0.8; 0; 0]);

mag_cyl = magnetdefine(...
  'type','cylinder',...
  'dim',[0.075 0.3],...
  'magdir',[5 2 1],...
  'magn',1);

magnetdraw(mag_cyl,[1.0; 0; 0]);

