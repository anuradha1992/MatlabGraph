clear; clc; close all;
addpath ('../functions')
addpath ('./mats')

load('./mats/AAM_p19_i10_v1.mat');
load('./mats/AAM_p19_i10_v2.mat');
load('./mats/AAM_p19_i10_v3.mat');
load('./mats/AAM_p19_i10_v4.mat');

AAM_pt_pt_err_19 = [AAM_p19_i10_v1.pt_pt_err(:,1); AAM_p19_i10_v2.pt_pt_err(:,1); AAM_p19_i10_v3.pt_pt_err(:,1); AAM_p19_i10_v4.pt_pt_err(:,1)];

load('./mats/AAM_p15_i10_v1.mat');
load('./mats/AAM_p15_i10_v2.mat');
load('./mats/AAM_p15_i10_v3.mat');
load('./mats/AAM_p15_i10_v4.mat');

AAM_pt_pt_err_15 = [AAM_p15_i10_v1.pt_pt_err(:,1); AAM_p15_i10_v2.pt_pt_err(:,1); AAM_p15_i10_v3.pt_pt_err(:,1); AAM_p15_i10_v4.pt_pt_err(:,1);];

load('./mats/AAM_p7_i10_v1.mat');
load('./mats/AAM_p7_i10_v2.mat');
load('./mats/AAM_p7_i10_v3.mat');
load('./mats/AAM_p7_i10_v4.mat');

AAM_pt_pt_err_7 = [AAM_p7_i10_v1.pt_pt_err(:,1); AAM_p7_i10_v2.pt_pt_err(:,1); AAM_p7_i10_v3.pt_pt_err(:,1); AAM_p7_i10_v4.pt_pt_err(:,1);];

frame_nos = zeros(1,1800);
for i = 1:1800
    frame_nos(1,i) = i;
end

%% LK AAM

load('./mats/LKAAM_p19_i10_v1.mat');
load('./mats/LKAAM_p19_i10_v2.mat');
load('./mats/LKAAM_p19_i10_v3.mat');
load('./mats/LKAAM_p19_i10_v4.mat');

LK_pt_pt_err_19 = [LKAAM_p19_i10_v1.pt_pt_err(:,1); LKAAM_p19_i10_v2.pt_pt_err(:,1); LKAAM_p19_i10_v3.pt_pt_err(:,1); LKAAM_p19_i10_v4.pt_pt_err(:,1)];

load('./mats/LKAAM_p15_i10_v1.mat');
load('./mats/LKAAM_p15_i10_v2.mat');
load('./mats/LKAAM_p15_i10_v3.mat');
load('./mats/LKAAM_p15_i10_v4.mat');

LK_pt_pt_err_15 = [LKAAM_p15_i10_v1.pt_pt_err(:,1); LKAAM_p15_i10_v2.pt_pt_err(:,1); LKAAM_p15_i10_v3.pt_pt_err(:,1); LKAAM_p15_i10_v4.pt_pt_err(:,1);];

load('./mats/LKAAM_p7_i10_v1.mat');
load('./mats/LKAAM_p7_i10_v2.mat');
load('./mats/LKAAM_p7_i10_v3.mat');
load('./mats/LKAAM_p7_i10_v4.mat');

LK_pt_pt_err_7 = [LKAAM_p7_i10_v1.pt_pt_err(:,1); LKAAM_p7_i10_v2.pt_pt_err(:,1); LKAAM_p7_i10_v3.pt_pt_err(:,1); LKAAM_p7_i10_v4.pt_pt_err(:,1);];

frame_nos = zeros(1,1800);
for i = 1:1800
    frame_nos(1,i) = i;
end


%% Draw graph

figure;
subplot(2,1,1);

ylim([0 200])
hold on
patch([0 550 550 0], [max(ylim) max(ylim) 0 0], 'c', 'DisplayName','vid 1')
patch([550 1250 1250 550], [max(ylim) max(ylim) 0 0], [0.9 1 0.6], 'DisplayName','vid 2')
patch([1250 1500 1500 1250], [max(ylim) max(ylim) 0 0], [1 0.7 0.9], 'DisplayName','vid 3')
patch([1500 1800 1800 1500], [max(ylim) max(ylim) 0 0], [1 1 0.7], 'DisplayName','vid 4')

plot(frame_nos,AAM_pt_pt_err_19,'color','r','DisplayName','19 pts','LineWidth',1.5);
hold on;
plot(frame_nos,AAM_pt_pt_err_15,'color','b','DisplayName','15 pts','LineWidth',1.5);
hold on;
plot(frame_nos,AAM_pt_pt_err_7,'color','k','DisplayName','7 pts','LineWidth',1.5);
hold on;
legend('Location','northwest');
title('RMS point to point error vs Frame number for AAM fitting')
xlabel('Frame number');
ylabel('RMS point to point error [pixels]');

subplot(2,1,2);
ylim([0 200])
hold on
patch([0 550 550 0], [max(ylim) max(ylim) 0 0], 'c', 'DisplayName','vid 1')
patch([550 1250 1250 550], [max(ylim) max(ylim) 0 0], [0.9 1 0.6], 'DisplayName','vid 2')
patch([1250 1500 1500 1250], [max(ylim) max(ylim) 0 0], [1 0.7 0.9], 'DisplayName','vid 3')
patch([1500 1800 1800 1500], [max(ylim) max(ylim) 0 0], [1 1 0.7], 'DisplayName','vid 4')

plot(frame_nos,LK_pt_pt_err_19,'color','r','DisplayName','19 pts','LineWidth',1.5);
hold on;
plot(frame_nos,LK_pt_pt_err_15,'color','b','DisplayName','15 pts','LineWidth',1.5);
hold on;
plot(frame_nos,LK_pt_pt_err_7,'color','k','DisplayName','7 pts','LineWidth',1.5);
hold on;
legend('Location','northwest');
title('RMS point to point error vs Frame number for AAM fitting with optical flow')
xlabel('Frame number');
ylabel('RMS point to point error [pixels]');