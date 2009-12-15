%% Multipole array forces example
%
% Reproducing the results of Allag, Yonnet & Latreche (2009).

%% Setup
%
% In case you don't have the various bits'n'pieces that I use to create
% my Matlab graphics (probably likely).

if ~exist('willfig','file')
  close all
  willfig = @(str) figure;
  simple_graph = 1;
else
  simple_graph = 0;
end

%% Calculate

fixed_array = ...
  struct(...
  'type','linear-y',  ...
  'face','up',        ...
  'msize',  [0.01 0.01 0.01],   ...
  'Nmag_per_wave', 4, ...
  'Nmag', 5,          ...
  'magn', 1,          ...
  'magdir_first', -90 ...
  );

float_array = fixed_array;
float_array.face = 'down';
float_array.magdir_first = 90;

displ_steps = 201;
yrange = linspace(-0.08,0.08,displ_steps);

zgap = 0.015;
forces = repmat(NaN,[displ_steps 3]);

for ii = 1:displ_steps
  displ = [0 yrange(ii) zgap];
  forces(ii,:) = multipoleforces(fixed_array, float_array, displ);
end

%% Plot

willfig('allag-repro'); clf; hold on;

plot(yrange,forces(:,2),'Tag','y');
plot(yrange,forces(:,3),'Tag','z');
set(gca,'box','on','xlim',[yrange(1) yrange(end)],'ylim',[-40 50])
xlabel('Horizontal $y$ displacement, m')
ylabel('Force, N')
text( -0.018 ,40,'$F_z$');
text(  0.015,30,'$F_y$');

if ~simple_graph
  [h1 h2] = draworigin;
  set([h1 h2],'linestyle','--');
  colourplot
  % labelplot
  matlabfrag('fig/allag-repro');
end