function ShowPalette( )
% Show my color palette
% Code taken from https://www.mathworks.com/examples/matlab/community/19592-colormap_chart
maps=GetPalette('GetPaletteIds');
% Number of color levels to create

nMaps = length(maps);

figure

% Create each color bar
for iMap = 1:nMaps
        % Construct appropriate colormap.
    cData = GetPalette(maps{iMap});
    
    nLevels = size(cData,1);
    offset = 2*(length(maps) - iMap);
    % X data points for color patches
    xData = [linspace(0, 15, nLevels); linspace(1, 16, nLevels); ...
    linspace(1, 16, nLevels); linspace(0, 15, nLevels)];
    yData = [zeros(2, nLevels); 1.5*ones(2, nLevels)] + offset;
    % Display colormap chart
    patch('XData', xData, 'YData', yData, ...
        'EdgeColor', 'none', ...
        'FaceColor', 'flat', ...
        'FaceVertexCData', cData)
    rectangle('Position', [0, offset, 16, 1.5], ...
        'Curvature', [0 0])
    text(16, offset, sprintf(' %s', maps{iMap}), ...
        'VerticalAlignment', 'bottom', ...
        'FontSize', 16)
end

set(gcf, 'Color', 'w');
axis equal off
title('GetPalette Colormaps','Fontsize',28)

end

