load Feldmann_Christmas2022.mat

Z_index = Feldmann_Christmas2022.Figure3B.Z_index(3); % Z coord set to -6.5 mm
X_axis = Feldmann_Christmas2022.Figure3B.x;
Y_axis = Feldmann_Christmas2022.Figure3B.y;

figure
imagesc(X_axis, Y_axis ,...
    Feldmann_Christmas2022.Figure3B.heatmap.img(:,:,Z_index)');
xlim([-15 -10])
ylim([-15 -10])
axis xy
colormap('turbo')