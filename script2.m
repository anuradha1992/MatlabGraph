data = textread('./OutputForMATLAB/0/fudicialFeaturesOutput.txt', '%s', 'delimiter', '\n');

act_coords = zeros(300,8);
est_coords = zeros(300,8);

for i=0:299
    arr = strread(char(data{i*2 + 1}),'%s','delimiter',',');
    coords = zeros(1,8);
    for j=1:8
        if(mod(j,2) == 1)
            a1 = strread(arr{j},'%s','delimiter','{');
            coords(1,j) = str2double(a1{2});
        else
            a1 = strread(arr{j},'%s','delimiter','}');
            coords(1,j) = str2double(a1{1});
        end
    end
    act_coords((i+1),:) = coords;
end

for i=0:299
    arr = strread(char(data{i*2 + 2}),'%s','delimiter',',');
    coords = zeros(1,8);
    for j=1:8
        if(mod(j,2) == 1)
            a1 = strread(arr{j},'%s','delimiter','{');
            coords(1,j) = str2double(a1{2});
        else
            a1 = strread(arr{j},'%s','delimiter','}');
            coords(1,j) = str2double(a1{1});
        end
    end
    est_coords((i+1),:) = coords;
end

rms_pt_pt_0 = zeros(300,1);

for i=1:300
    if(est_coords(i,1) == -1)
        rms_pt_pt_0(i,:) = -1;
    else
        error_addition = 0;
        for k=0:3
            error_addition = error_addition + ((act_coords(i,(k*2 + 1)) - est_coords(i,(k*2 + 1)))^2 + (act_coords(i,(k*2 + 2)) - est_coords(i,(k*2 + 2)))^2);
        end
        rms_pt_pt_0(i,:) = sqrt(error_addition/4);
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

data = textread('./OutputForMATLAB/1/fudicialFeaturesOutput.txt', '%s', 'delimiter', '\n');

act_coords = zeros(300,8);
est_coords = zeros(300,8);

for i=0:299
    arr = strread(char(data{i*2 + 1}),'%s','delimiter',',');
    coords = zeros(1,8);
    for j=1:8
        if(mod(j,2) == 1)
            a1 = strread(arr{j},'%s','delimiter','{');
            coords(1,j) = str2double(a1{2});
        else
            a1 = strread(arr{j},'%s','delimiter','}');
            coords(1,j) = str2double(a1{1});
        end
    end
    act_coords((i+1),:) = coords;
end

for i=0:299
    arr = strread(char(data{i*2 + 2}),'%s','delimiter',',');
    coords = zeros(1,8);
    for j=1:8
        if(mod(j,2) == 1)
            a1 = strread(arr{j},'%s','delimiter','{');
            coords(1,j) = str2double(a1{2});
        else
            a1 = strread(arr{j},'%s','delimiter','}');
            coords(1,j) = str2double(a1{1});
        end
    end
    est_coords((i+1),:) = coords;
end

rms_pt_pt_1 = zeros(300,1);

for i=1:300
    if(est_coords(i,1) == -1)
        rms_pt_pt_0(i,:) = -1;
    else
        error_addition = 0;
        for k=0:3
            error_addition = error_addition + ((act_coords(i,(k*2 + 1)) - est_coords(i,(k*2 + 1)))^2 + (act_coords(i,(k*2 + 2)) - est_coords(i,(k*2 + 2)))^2);
        end
        rms_pt_pt_1(i,:) = sqrt(error_addition/4);
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

data = textread('./OutputForMATLAB/2/fudicialFeaturesOutput.txt', '%s', 'delimiter', '\n');

act_coords = zeros(300,8);
est_coords = zeros(300,8);

for i=0:299
    arr = strread(char(data{i*2 + 1}),'%s','delimiter',',');
    coords = zeros(1,8);
    for j=1:8
        if(mod(j,2) == 1)
            a1 = strread(arr{j},'%s','delimiter','{');
            coords(1,j) = str2double(a1{2});
        else
            a1 = strread(arr{j},'%s','delimiter','}');
            coords(1,j) = str2double(a1{1});
        end
    end
    act_coords((i+1),:) = coords;
end

for i=0:299
    arr = strread(char(data{i*2 + 2}),'%s','delimiter',',');
    coords = zeros(1,8);
    for j=1:8
        if(mod(j,2) == 1)
            a1 = strread(arr{j},'%s','delimiter','{');
            coords(1,j) = str2double(a1{2});
        else
            a1 = strread(arr{j},'%s','delimiter','}');
            coords(1,j) = str2double(a1{1});
        end
    end
    est_coords((i+1),:) = coords;
end

rms_pt_pt_2 = zeros(300,1);

for i=1:300
    if(est_coords(i,1) == -1)
        rms_pt_pt_0(i,:) = -1;
    else
        error_addition = 0;
        for k=0:3
            error_addition = error_addition + ((act_coords(i,(k*2 + 1)) - est_coords(i,(k*2 + 1)))^2 + (act_coords(i,(k*2 + 2)) - est_coords(i,(k*2 + 2)))^2);
        end
        rms_pt_pt_2(i,:) = sqrt(error_addition/4);
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

data = textread('./OutputForMATLAB/3/fudicialFeaturesOutput.txt', '%s', 'delimiter', '\n');

act_coords = zeros(300,8);
est_coords = zeros(300,8);

for i=0:299
    arr = strread(char(data{i*2 + 1}),'%s','delimiter',',');
    coords = zeros(1,8);
    for j=1:8
        if(mod(j,2) == 1)
            a1 = strread(arr{j},'%s','delimiter','{');
            coords(1,j) = str2double(a1{2});
        else
            a1 = strread(arr{j},'%s','delimiter','}');
            coords(1,j) = str2double(a1{1});
        end
    end
    act_coords((i+1),:) = coords;
end

for i=0:299
    arr = strread(char(data{i*2 + 2}),'%s','delimiter',',');
    coords = zeros(1,8);
    for j=1:8
        if(mod(j,2) == 1)
            a1 = strread(arr{j},'%s','delimiter','{');
            coords(1,j) = str2double(a1{2});
        else
            a1 = strread(arr{j},'%s','delimiter','}');
            coords(1,j) = str2double(a1{1});
        end
    end
    est_coords((i+1),:) = coords;
end

rms_pt_pt_3 = zeros(300,1);

for i=1:300
    if(est_coords(i,1) == -1)
        rms_pt_pt_0(i,:) = -1;
    else
        error_addition = 0;
        for k=0:3
            error_addition = error_addition + ((act_coords(i,(k*2 + 1)) - est_coords(i,(k*2 + 1)))^2 + (act_coords(i,(k*2 + 2)) - est_coords(i,(k*2 + 2)))^2);
        end
        rms_pt_pt_3(i,:) = sqrt(error_addition/4);
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

data = textread('./OutputForMATLAB/4/fudicialFeaturesOutput.txt', '%s', 'delimiter', '\n');

act_coords = zeros(300,8);
est_coords = zeros(300,8);

for i=0:299
    arr = strread(char(data{i*2 + 1}),'%s','delimiter',',');
    coords = zeros(1,8);
    for j=1:8
        if(mod(j,2) == 1)
            a1 = strread(arr{j},'%s','delimiter','{');
            coords(1,j) = str2double(a1{2});
        else
            a1 = strread(arr{j},'%s','delimiter','}');
            coords(1,j) = str2double(a1{1});
        end
    end
    act_coords((i+1),:) = coords;
end

for i=0:299
    arr = strread(char(data{i*2 + 2}),'%s','delimiter',',');
    coords = zeros(1,8);
    for j=1:8
        if(mod(j,2) == 1)
            a1 = strread(arr{j},'%s','delimiter','{');
            coords(1,j) = str2double(a1{2});
        else
            a1 = strread(arr{j},'%s','delimiter','}');
            coords(1,j) = str2double(a1{1});
        end
    end
    est_coords((i+1),:) = coords;
end

rms_pt_pt_4 = zeros(300,1);

for i=1:300
    if(est_coords(i,1) == -1)
        rms_pt_pt_0(i,:) = -1;
    else
        error_addition = 0;
        for k=0:3
            error_addition = error_addition + ((act_coords(i,(k*2 + 1)) - est_coords(i,(k*2 + 1)))^2 + (act_coords(i,(k*2 + 2)) - est_coords(i,(k*2 + 2)))^2);
        end
        rms_pt_pt_4(i,:) = sqrt(error_addition/4);
    end
end


err = vertcat(rms_pt_pt_0,rms_pt_pt_1,rms_pt_pt_2,rms_pt_pt_3,rms_pt_pt_4);

size(err)


%% Draw graph

figure;
subplot(1,1,1);

ylim([-2 10])
hold on
patch([0 300 300 0], [max(ylim) max(ylim) -2 -2], 'c', 'DisplayName','Trans vid')
patch([300 600 600 300], [max(ylim) max(ylim) -2 -2], [0.9 1 0.6], 'DisplayName','Roll vid')
patch([600 900 900 600], [max(ylim) max(ylim) -2 -2], [1 0.7 0.9], 'DisplayName','Yaw vid')
patch([900 1200 1200 900], [max(ylim) max(ylim) -2 -2], [1 1 0.7], 'DisplayName','Pitch vid')
patch([1200 1500 1500 1200], [max(ylim) max(ylim) -2 -2], [0 1 0.7], 'DisplayName','Scale vid')

frame_nos = zeros(1,1500);
for i = 1:1500
    frame_nos(1,i) = i;
end
size(frame_nos)

plot(frame_nos,err(:,1),'color','r','DisplayName','Point to point RMS error','LineWidth',1.5);
hold on;
legend('Location','northwest');
title('Point to point RMS errors between the ground truth and the estimated facial feature points')
xlabel('Frame number');
ylabel('Point to point RMS error (in pixels)');