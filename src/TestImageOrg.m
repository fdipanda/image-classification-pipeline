
testTable = readtable('Test.csv', 'VariableNamingRule', 'preserve');


circleLabels = [0:5, 7:10, 15:17];
triangleLabels = [11, 13, 18:31];
blueLabels = 33:40;
ignoreLabels = [6, 12, 14, 32, 41, 42];


dstFolder = 'Grouped_Test';

% Create folders if they don't exist
shapes = {'circle', 'triangle', 'blue'};
for s = 1:length(shapes)
    shapePath = fullfile(dstFolder, shapes{s});
    if ~exist(shapePath, 'dir')
        mkdir(shapePath);
    end
end

for i = 1:height(testTable)
    label = testTable.ClassId(i);
    filename = testTable.Path{i};

    % Skip ignored labels
    if ismember(label, ignoreLabels)
        continue;
    end

    % Determine destination folder
    if ismember(label, circleLabels)
        shapeFolder = 'circle';
    elseif ismember(label, triangleLabels)
        shapeFolder = 'triangle';
    elseif ismember(label, blueLabels)
        shapeFolder = 'blue';
    else
        continue;
    end


    src = filename;
    [~, name, ext] = fileparts(filename);
    dst = fullfile(dstFolder, shapeFolder, [name ext]);

    % Copy image
    if isfile(src)
        copyfile(src, dst);
    else
        warning('File not found: %s', src);
    end
end
