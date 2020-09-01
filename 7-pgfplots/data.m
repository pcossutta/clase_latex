clear all
close all

name = 'fig1_tikz';
width = 12;
height = 8;
h1=figure('Units','centimeters', 'Position',[0 0 width height], 'PaperPositionMode','auto');

defaultFont = 'SansSerif';
set(0,'DefaultAxesFontName', defaultFont)
set(0,'DefaultTextFontname', defaultFont)

N=100;
wt=0:2*pi/N:2*pi;
plot(wt,sin(wt));
hold on
plot(wt, cos(wt))

set(gca, 'TickLabelInterpreter','latex', 'FontUnits', 'Points', 'FontSize', 9, 'FontName', defaultFont);
set(gca, 'XTick',[0, pi/2, pi, 3/2*pi, 2*pi])
set(gca, 'XTicklabel',{'$0$', '$\frac{\pi}{2}$', '$\pi$', '$\frac{3}{2}\pi$', '$2\pi$'})
grid on

