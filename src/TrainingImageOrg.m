trainTable = readtable('Train.csv', 'VariableNamingRule', 'preserve');



circleLabels = [0:5, 7:10, 15:17];
triangleLabels = [11, 13, 18:31];
blueLabels = 33:40;
ignoreLabels = [6, 12, 14, 32, 41, 42];

srcFolder = 'Train'; % Root folder
dstFolder = 'Grouped_Train';

mkdir(fullfile(dstFolder, 'circle'));
mkdir(fullfile(dstFolder, 'triangle'));
mkdir(fullfile(dstFolder, 'blue'));


for i = 1:height(trainTable)
    label = trainTable.ClassId(i);
    filename = trainTable.Path{i};

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

    % Source and destination file paths
    src = filename; 
    [~, name, ext] = fileparts(filename);
dst = fullfile(dstFolder, shapeFolder, [name ext]);


    % Copy the image
    if isfile(src)
        copyfile(src, dst);
    else
        warning('File not found: %s', src);
    end
end
