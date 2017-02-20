data = textread('./OutputForMATLAB/0/poseOutput.txt', '%s', 'delimiter', ','); 

mat_data_act_0 = zeros(300,3);
mat_data_est_0 = zeros(300,3);

for i=0:299
    mat_data_act_0((i+1),:) = [abs(str2double(data(i*6 + 1))) abs(str2double(data(i*6 + 2))) abs(str2double(data(i*6 + 3)))];
    if(abs(str2double(data(i*6 + 4))) == 361)
        mat_data_est_0((i+1),:) = [-1 -1 -1];
    else
        mat_data_est_0((i+1),:) = [abs(str2double(data(i*6 + 4))) abs(str2double(data(i*6 + 5))) abs(str2double(data(i*6 + 6)))];
    end
end

data = textread('./OutputForMATLAB/1/poseOutput.txt', '%s', 'delimiter', ','); 

mat_data_act_1 = zeros(300,3);
mat_data_est_1 = zeros(300,3);

for i=0:299
    mat_data_act_1((i+1),:) = [abs(str2double(data(i*6 + 1))) abs(str2double(data(i*6 + 2))) abs(str2double(data(i*6 + 3)))];
    if(abs(str2double(data(i*6 + 4))) == 361)
        mat_data_est_1((i+1),:) = [-1 -1 -1];
    else
        mat_data_est_1((i+1),:) = [abs(str2double(data(i*6 + 4))) abs(str2double(data(i*6 + 5))) abs(str2double(data(i*6 + 6)))];
    end
end

data = textread('./OutputForMATLAB/2/poseOutput.txt', '%s', 'delimiter', ','); 

mat_data_act_2 = zeros(300,3);
mat_data_est_2 = zeros(300,3);

for i=0:299
    mat_data_act_2((i+1),:) = [abs(str2double(data(i*6 + 1))) abs(str2double(data(i*6 + 2))) abs(str2double(data(i*6 + 3)))];
    if(abs(str2double(data(i*6 + 4))) == 361)
        mat_data_est_2((i+1),:) = [-1 -1 -1];
    else
        mat_data_est_2((i+1),:) = [abs(str2double(data(i*6 + 4))) abs(str2double(data(i*6 + 5))) abs(str2double(data(i*6 + 6)))];
    end
end

data = textread('./OutputForMATLAB/3/poseOutput.txt', '%s', 'delimiter', ','); 

mat_data_act_3 = zeros(300,3);
mat_data_est_3 = zeros(300,3);

for i=0:299
    mat_data_act_3((i+1),:) = [abs(str2double(data(i*6 + 1))) abs(str2double(data(i*6 + 2))) abs(str2double(data(i*6 + 3)))];
    if(abs(str2double(data(i*6 + 4))) == 361)
        mat_data_est_3((i+1),:) = [-1 -1 -1];
    else
        mat_data_est_3((i+1),:) = [abs(str2double(data(i*6 + 4))) abs(str2double(data(i*6 + 5))) abs(str2double(data(i*6 + 6)))];
    end
end

data = textread('./OutputForMATLAB/4/poseOutput.txt', '%s', 'delimiter', ','); 

mat_data_act_4 = zeros(300,3);
mat_data_est_4 = zeros(300,3);

for i=0:299
    mat_data_act_4((i+1),:) = [abs(str2double(data(i*6 + 1))) abs(str2double(data(i*6 + 2))) abs(str2double(data(i*6 + 3)))];
    if(abs(str2double(data(i*6 + 4))) == 361)
        mat_data_est_4((i+1),:) = [-1 -1 -1];
    else
        mat_data_est_4((i+1),:) = [abs(str2double(data(i*6 + 4))) abs(str2double(data(i*6 + 5))) abs(str2double(data(i*6 + 6)))];
    end
end

pose_act = vertcat(mat_data_act_0,mat_data_act_1,mat_data_act_2,mat_data_act_3,mat_data_act_4);
pose_est = vertcat(mat_data_est_0,mat_data_est_1,mat_data_est_2,mat_data_est_3,mat_data_est_4);


frame_nos = zeros(1,1500);
for i = 1:1500
    frame_nos(1,i) = i;
end

%% Draw graph

figure;
subplot(1,1,1);

ylim([-2 40])
hold on
patch([0 300 300 0], [max(ylim) max(ylim) -2 -2], 'c', 'DisplayName','Trans vid')
patch([300 600 600 300], [max(ylim) max(ylim) -2 -2], [0.9 1 0.6], 'DisplayName','Roll vid')
patch([600 900 900 600], [max(ylim) max(ylim) -2 -2], [1 0.7 0.9], 'DisplayName','Yaw vid')
patch([900 1200 1200 900], [max(ylim) max(ylim) -2 -2], [1 1 0.7], 'DisplayName','Pitch vid')
patch([1200 1500 1500 1200], [max(ylim) max(ylim) -2 -2], [0 1 0.7], 'DisplayName','Scale vid')

plot(frame_nos,pose_act(:,1),'color','r','DisplayName','Acutal roll','LineWidth',1.5);
hold on;
plot(frame_nos,pose_est(:,1),'color','b','DisplayName','Estimated roll','LineWidth',1.5);
hold on;
legend('Location','northwest');
title('Deviation of the roll angle')
xlabel('Frame number');
ylabel('Actual and estimated roll angles');

%subplot(3,1,2);
