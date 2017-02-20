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

pose_act = vertcat(mat_data_act_1,mat_data_act_2,mat_data_act_3);
pose_est = vertcat(mat_data_est_1,mat_data_est_2,mat_data_est_3);

frame_nos = zeros(1,900);
for i = 1:900
    frame_nos(1,i) = i;
end

pose_act_new = vertcat(pose_act(1:300,1),pose_act(301:600,2),pose_act(601:900,3));
pose_est_new = vertcat(pose_est(1:300,1),pose_est(301:600,2),pose_est(601:900,3));

size(pose_act(1:3,1))
size(pose_act_new)

%% Draw graph

figure;
subplot(1,1,1);

set(0,'DefaultAxesFontSize',16)


ylim([-2 40])
hold on
%patch([0 300 300 0], [max(ylim) max(ylim) -2 -2], 'c', 'DisplayName','Trans vid')
patch([0 300 300 0], [max(ylim) max(ylim) -2 -2], [0.9 1 0.6], 'DisplayName','Deviation of the Roll')
patch([300 600 600 300], [max(ylim) max(ylim) -2 -2], [1 0.7 0.9], 'DisplayName','Deviation of the Yaw')
patch([600 900 900 600], [max(ylim) max(ylim) -2 -2], [1 1 0.7], 'DisplayName','Deviation of the Pitch')
%patch([1200 1500 1500 1200], [max(ylim) max(ylim) -2 -2], [0 1 0.7], 'DisplayName','Scale vid')

plot(frame_nos,pose_act_new(:,1),'color','r','DisplayName','Acutal head pose','LineWidth',2.5);
hold on;
plot(frame_nos,pose_est_new(:,1),'color','c','DisplayName','Estimated head pose','LineWidth',2.5);
hold on;
legend('Location','northwest');
title('Deviation of the roll, yaw and pitch angles')
xlabel('Frame number', 'FontSize', 18);
ylabel('Actual and estimated head pose angles (in degrees)', 'FontSize', 18);

%subplot(3,1,2);

