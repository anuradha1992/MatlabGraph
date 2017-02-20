data = textread('./OutputForMATLAB/0/poseOutput.txt', '%s', 'delimiter', ','); 

mat_data_act_0 = zeros(300,3);
mat_data_est_0 = zeros(300,3);

for i=0:299
    mat_data_act_0((i+1),:) = [abs(str2double(data(i*6 + 1))) abs(str2double(data(i*6 + 2))) abs(str2double(data(i*6 + 3)))];
    mat_data_est_0((i+1),:) = [abs(str2double(data(i*6 + 4))) abs(str2double(data(i*6 + 5))) abs(str2double(data(i*6 + 6)))];
end

data = textread('./OutputForMATLAB/1/poseOutput.txt', '%s', 'delimiter', ','); 

mat_data_act_1 = zeros(300,3);
mat_data_est_1 = zeros(300,3);

for i=0:299
    mat_data_act_1((i+1),:) = [abs(str2double(data(i*6 + 1))) abs(str2double(data(i*6 + 2))) abs(str2double(data(i*6 + 3)))];
    mat_data_est_1((i+1),:) = [abs(str2double(data(i*6 + 4))) abs(str2double(data(i*6 + 5))) abs(str2double(data(i*6 + 6)))];
end

data = textread('./OutputForMATLAB/2/poseOutput.txt', '%s', 'delimiter', ','); 

mat_data_act_2 = zeros(300,3);
mat_data_est_2 = zeros(300,3);

for i=0:299
    mat_data_act_2((i+1),:) = [abs(str2double(data(i*6 + 1))) abs(str2double(data(i*6 + 2))) abs(str2double(data(i*6 + 3)))];
    mat_data_est_2((i+1),:) = [abs(str2double(data(i*6 + 4))) abs(str2double(data(i*6 + 5))) abs(str2double(data(i*6 + 6)))];
end

data = textread('./OutputForMATLAB/3/poseOutput.txt', '%s', 'delimiter', ','); 

mat_data_act_3 = zeros(300,3);
mat_data_est_3 = zeros(300,3);

for i=0:299
    mat_data_act_3((i+1),:) = [abs(str2double(data(i*6 + 1))) abs(str2double(data(i*6 + 2))) abs(str2double(data(i*6 + 3)))];
    mat_data_est_3((i+1),:) = [abs(str2double(data(i*6 + 4))) abs(str2double(data(i*6 + 5))) abs(str2double(data(i*6 + 6)))];
end

data = textread('./OutputForMATLAB/4/poseOutput.txt', '%s', 'delimiter', ','); 

mat_data_act_4 = zeros(300,3);
mat_data_est_4 = zeros(300,3);

for i=0:299
    mat_data_act_4((i+1),:) = [abs(str2double(data(i*6 + 1))) abs(str2double(data(i*6 + 2))) abs(str2double(data(i*6 + 3)))];
    mat_data_est_4((i+1),:) = [abs(str2double(data(i*6 + 4))) abs(str2double(data(i*6 + 5))) abs(str2double(data(i*6 + 6)))];
end

pose_act = vertcat(mat_data_act_0,mat_data_act_1,mat_data_act_2,mat_data_act_3,mat_data_act_4);
pose_est = vertcat(mat_data_est_0,mat_data_est_1,mat_data_est_2,mat_data_est_3,mat_data_est_4);
