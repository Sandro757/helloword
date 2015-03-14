function Diff_Parameters_Diff_Results_49rules(ExpNumber,varargin)
% This file is to show effects of different parameters (triangular
% membership functions and minimum premise. The rule base is
% [7,7,7,7,6,5,4;7,7,7,6,5,4,3;7,7,6,5,4,3,2;7,6,5,4,3,2,1;
%  6,5,4,3,2,1,1;5,4,3,2,1,1,1;4,3,2,1,1,1,1]. Center points are
% [-pi/2 -pi/3 -pi/6 0 pi/6 pi/3 pi/2;-pi/4 -pi/6 -pi/12 0 pi/12 pi/6...
% pi/4;-20 -40/3 -20/3 0 20/3 40/3 20]. widths are 
% [pi/3 pi/3 pi/3 pi/3 pi/3 pi/3 pi/3;pi/6 pi/6 pi/6 pi/6 pi/6 pi/6 pi/6;40/3 40/3 40/3 40/3 40/3 40/3 40/3]
% Diff_Parameters_Diff_Results_triangle_min(ExpNumber,Save)
% Input: 
%   "ExpNumber" can be one single number or an array.
%   "Save" can be ignored. If it is 1, save all display figures. Otherwise,
%   figures will not be saved. default is 0.
% ExpNumber:
%   1 -> Experiment 1 (1)
%   2 -> Experiment 1 (2)
%   3 -> Experiment 1 (3)
%   4 -> Experiment 1 (4)
%   5 -> Experiment 2 (1)
%   6 -> Experiment 2 (2)
%   7 -> Experiment 3
% 1. Experiment 1
% Different input gains (g0,g1) and output gain (h)
% Initial angle is 0.1 radians. Other initial values are 0. No extral force
% is inputted.
% (1) g0=1, g1=1, h=1: figure 1 and figure 2
% (2) g0=1, g1=0.1 h=1: figure 3 and figure 4
% (3) g0=2, g1=0.1 h=1: figure 5 and figure 6
% (4) g0=2, g1=0.1 h=5: figure 7 and figure 8
% 2. Experiment 2
% (1) Insert a 600N force from 0.99s to 1.01s (uniform distribution)
%     figure 9 and figure 10
% (2) Not stable. Make it stable to use Not uniform distribution
%     figure 11 and figure 12
% 3. Experiment 3: Plot control surface
% figure 13 and figure 14


if ~isempty(varargin)
    Save=varargin{1};
else
    Save=0;
end

FigHandle=[];
FigName={};
FigPath='Simulation_Results_49rules/';

for i=ExpNumber
    if i==1
        % 1. Experiment 1
        % Different input gains (g0,g1) and output gain (h)
        % Initial angle is 0.1 radians. Other initial values are 0. No extral force
        % is inputted.
        % (1) g0=1, g1=1, h=1: figure 1 and figure 2
        figure(1)
        set(1,'Position',[156   100   693   560],...
            'name','g0-1_g1-1_h-1_ForceAndAcceleration',...
            'PaperPosition',[156   100   693   560],...
            'PaperUnits','points',...
            'PaperPositionMode','auto')
        figure(2)
        set(2,'Position',[156   100   693   560],...
            'name','g0-1_g1-1_h-1_AngleAndPosition',...
            'PaperPosition',[156   100   693   560],...
            'PaperUnits','points',...
            'PaperPositionMode','auto')
        test_InvertedPendulum_with_fuzzy_controller('FigureNumber',[1,2],...
            'rulebase',[7,7,7,7,6,5,4;7,7,7,6,5,4,3;7,7,6,5,4,3,2;...
            7,6,5,4,3,2,1;6,5,4,3,2,1,1;5,4,3,2,1,1,1;4,3,2,1,1,1,1],...
            'centerpoint',[-pi/2 -pi/3 -pi/6 0 pi/6 pi/3 pi/2;...
            -pi/4 -pi/6 -pi/12 0 pi/12 pi/6 pi/4;...
            -20 -40/3 -20/3 0 20/3 40/3 20],...
            'width',[pi/3 pi/3 pi/3 pi/3 pi/3 pi/3 pi/3;...
            pi/6 pi/6 pi/6 pi/6 pi/6 pi/6 pi/6;...
            40/3 40/3 40/3 40/3 40/3 40/3 40/3]);
        FigHandle(end+1)=1;
        FigHandle(end+1)=2;
        FigName{end+1}='g0-1_g1-1_h-1_ForceAndAcceleration';
        FigName{end+1}='g0-1_g1-1_h-1_AngleAndPosition';
    elseif i==2
        % (2) g0=1, g1=0.1 h=1: figure 3 and figure 4
        figure(3)
        set(3,'Position',[156   100   693   560],...
            'name','g0-1_g1-0dot1_h-1_ForceAndAcceleration',...
            'PaperPosition',[156   100   693   560],...
            'PaperUnits','points',...
            'PaperPositionMode','auto')
        figure(4)
        set(4,'Position',[156   100   693   560],...
            'name','g0-1_g1-0dot1_h-1_AngleAndPosition',...
            'PaperPosition',[156   100   693   560],...
            'PaperUnits','points',...
            'PaperPositionMode','auto')
        test_InvertedPendulum_with_fuzzy_controller('g1',0.1,'FigureNumber',[3,4],...
            'rulebase',[7,7,7,7,6,5,4;7,7,7,6,5,4,3;7,7,6,5,4,3,2;...
            7,6,5,4,3,2,1;6,5,4,3,2,1,1;5,4,3,2,1,1,1;4,3,2,1,1,1,1],...
            'centerpoint',[-pi/2 -pi/3 -pi/6 0 pi/6 pi/3 pi/2;...
            -pi/4 -pi/6 -pi/12 0 pi/12 pi/6 pi/4;...
            -20 -40/3 -20/3 0 20/3 40/3 20],...
            'width',[pi/3 pi/3 pi/3 pi/3 pi/3 pi/3 pi/3;...
            pi/6 pi/6 pi/6 pi/6 pi/6 pi/6 pi/6;...
            40/3 40/3 40/3 40/3 40/3 40/3 40/3]);
        FigHandle(end+1)=3;
        FigHandle(end+1)=4;
        FigName{end+1}='g0-1_g1-0dot1_h-1_ForceAndAcceleration';
        FigName{end+1}='g0-1_g1-0dot1_h-1_AngleAndPosition';
    elseif i==3
        % (3) g0=2, g1=0.1 h=1: figure 5 and figure 6
        figure(5)
        set(5,'Position',[156   100   693   560],...
            'name','g0-2_g1-0dot1_h-1_ForceAndAcceleration',...
            'PaperPosition',[156   100   693   560],...
            'PaperUnits','points',...
            'PaperPositionMode','auto')
        figure(6)
        set(6,'Position',[156   100   693   560],...
            'name','g0-2_g1-0dot1_h-1_AngleAndPosition',...
            'PaperPosition',[156   100   693   560],...
            'PaperUnits','points',...
            'PaperPositionMode','auto')
        test_InvertedPendulum_with_fuzzy_controller('g0',2,'g1',0.1,'FigureNumber',[5,6],...
            'rulebase',[7,7,7,7,6,5,4;7,7,7,6,5,4,3;7,7,6,5,4,3,2;...
            7,6,5,4,3,2,1;6,5,4,3,2,1,1;5,4,3,2,1,1,1;4,3,2,1,1,1,1],...
            'centerpoint',[-pi/2 -pi/3 -pi/6 0 pi/6 pi/3 pi/2;...
            -pi/4 -pi/6 -pi/12 0 pi/12 pi/6 pi/4;...
            -20 -40/3 -20/3 0 20/3 40/3 20],...
            'width',[pi/3 pi/3 pi/3 pi/3 pi/3 pi/3 pi/3;...
            pi/6 pi/6 pi/6 pi/6 pi/6 pi/6 pi/6;...
            40/3 40/3 40/3 40/3 40/3 40/3 40/3]);
        FigHandle(end+1)=5;
        FigHandle(end+1)=6;
        FigName{end+1}='g0-2_g1-0dot1_h-1_ForceAndAcceleration';
        FigName{end+1}='g0-2_g1-0dot1_h-1_AngleAndPosition';
    elseif i==4
        % (4) g0=2, g1=0.1 h=5: figure 7 and figure 8
        figure(7)
        set(7,'Position',[156   100   693   560],...
            'name','g0-2_g1-0dot1_h-5_ForceAndAcceleration',...
            'PaperPosition',[156   100   693   560],...
            'PaperUnits','points',...
            'PaperPositionMode','auto')
        figure(8)
        set(8,'Position',[156   100   693   560],...
            'name','g0-2_g1-0dot1_h-5_AngleAndPosition',...
            'PaperPosition',[156   100   693   560],...
            'PaperUnits','points',...
            'PaperPositionMode','auto')
        test_InvertedPendulum_with_fuzzy_controller('g0',2,'g1',0.1,'h',5,'FigureNumber',[7,8],...
            'rulebase',[7,7,7,7,6,5,4;7,7,7,6,5,4,3;7,7,6,5,4,3,2;...
            7,6,5,4,3,2,1;6,5,4,3,2,1,1;5,4,3,2,1,1,1;4,3,2,1,1,1,1],...
            'centerpoint',[-pi/2 -pi/3 -pi/6 0 pi/6 pi/3 pi/2;...
            -pi/4 -pi/6 -pi/12 0 pi/12 pi/6 pi/4;...
            -20 -40/3 -20/3 0 20/3 40/3 20],...
            'width',[pi/3 pi/3 pi/3 pi/3 pi/3 pi/3 pi/3;...
            pi/6 pi/6 pi/6 pi/6 pi/6 pi/6 pi/6;...
            40/3 40/3 40/3 40/3 40/3 40/3 40/3]);
        FigHandle(end+1)=7;
        FigHandle(end+1)=8;
        FigName{end+1}='g0-2_g1-0dot1_h-5_ForceAndAcceleration';
        FigName{end+1}='g0-2_g1-0dot1_h-5_AngleAndPosition';
    elseif i==5
        % 2. Experiment 2
        % (1) Insert a 600N force from 0.99s to 1.01s (uniform distribution)
        %     figure 9 and figure 10
        figure(9)
        set(9,'Position',[156   100   693   560],...
            'name','g0-2_g1-0dot1_h-5_Force_Uniform_ForceAndAcceleration',...
            'PaperPosition',[156   100   693   560],...
            'PaperUnits','points',...
            'PaperPositionMode','auto')
        figure(10)
        set(10,'Position',[156   100   693   560],...
            'name','g0-2_g1-0dot1_h-5_Force_Uniform_AngleAndPosition',...
            'PaperPosition',[156   100   693   560],...
            'PaperUnits','points',...
            'PaperPositionMode','auto')
        test_InvertedPendulum_with_fuzzy_controller('g0',2,'g1',0.1,'h',5,'FigureNumber',[9,10],...
            'rulebase',[7,7,7,7,6,5,4;7,7,7,6,5,4,3;7,7,6,5,4,3,2;...
            7,6,5,4,3,2,1;6,5,4,3,2,1,1;5,4,3,2,1,1,1;4,3,2,1,1,1,1],...
            'centerpoint',[-pi/2 -pi/3 -pi/6 0 pi/6 pi/3 pi/2;...
            -pi/4 -pi/6 -pi/12 0 pi/12 pi/6 pi/4;...
            -20 -40/3 -20/3 0 20/3 40/3 20],...
            'width',[pi/3 pi/3 pi/3 pi/3 pi/3 pi/3 pi/3;...
            pi/6 pi/6 pi/6 pi/6 pi/6 pi/6 pi/6;...
            40/3 40/3 40/3 40/3 40/3 40/3 40/3],...
            'ForceInput',600,...
            'StartTime',0.99,...
            'EndTime',1.01);
        FigHandle(end+1)=9;
        FigHandle(end+1)=10;
        FigName{end+1}='g0-2_g1-0dot1_h-5_Force_Uniform_ForceAndAcceleration';
        FigName{end+1}='g0-2_g1-0dot1_h-5_Force_Uniform_AngleAndPosition';
    elseif i==6
        % (2) Not stable. Make it stable to use Not uniform distribution
        %     figure 11 and figure 12
        figure(11)
        set(11,'Position',[156   100   693   560],...
            'name','g0-2_g1-0dot1_h-5_Force_Not_Uniform_ForceAndAcceleration',...
            'PaperPosition',[156   100   693   560],...
            'PaperUnits','points',...
            'PaperPositionMode','auto')
        figure(12)
        set(12,'Position',[156   100   693   560],...
            'name','g0-2_g1-0dot1_h-5_Force_Not_Uniform_AngleAndPosition',...
            'PaperPosition',[156   100   693   560],...
            'PaperUnits','points',...
            'PaperPositionMode','auto')
        test_InvertedPendulum_with_fuzzy_controller('g0',2,'g1',0.1,'h',5,'FigureNumber',[11,12],...
            'rulebase',[7,7,7,7,6,5,4;7,7,7,6,5,4,3;7,7,6,5,4,3,2;...
            7,6,5,4,3,2,1;6,5,4,3,2,1,1;5,4,3,2,1,1,1;4,3,2,1,1,1,1],...
            'centerpoint',[-pi/2 -pi/3 -pi/6 0 pi/6 pi/3 pi/2;...
            -pi/4 -pi/6 -pi/12 0 pi/12 pi/6 pi/4;...
            -60 -80/3 -20/3 0 20/3 80/3 60],...
            'width',[pi/3 pi/3 pi/3 pi/3 pi/3 pi/3 pi/3;...
            pi/6 pi/6 pi/6 pi/6 pi/6 pi/6 pi/6;...
            40/3 40/3 40/3 40/3 40/3 40/3 40/3],...
            'ForceInput',600,...
            'StartTime',0.99,...
            'EndTime',1.01);
        FigHandle(end+1)=11;
        FigHandle(end+1)=12;
        FigName{end+1}='g0-2_g1-0dot1_h-5_Force_Not_Uniform_ForceAndAcceleration';
        FigName{end+1}='g0-2_g1-0dot1_h-5_Force_Not_Uniform_AngleAndPosition';
    elseif i==7
        % 3. Experiment 3: Plot control surface
        fontsize=20;
        e=linspace(-0.9,0.9,60);
        de=linspace(-9,9,60);
        g0=2;g1=0.1;h=5;
        rulebase=[7,7,7,7,6,5,4;7,7,7,6,5,4,3;7,7,6,5,4,3,2;...
            7,6,5,4,3,2,1;6,5,4,3,2,1,1;5,4,3,2,1,1,1;4,3,2,1,1,1,1];
        functiontype='triangle';
        COGtype='min';
        [X_e,Y_de]=meshgrid(e,de);
        % figure 13: Uniform distribution
        figure(13)
        centerpoint=[-pi/2 -pi/3 -pi/6 0 pi/6 pi/3 pi/2;...
            -pi/4 -pi/6 -pi/12 0 pi/12 pi/6 pi/4;...
            -20 -40/3 -20/3 0 20/3 40/3 20];
        width=[pi/3 pi/3 pi/3 pi/3 pi/3 pi/3 pi/3;...
            pi/6 pi/6 pi/6 pi/6 pi/6 pi/6 pi/6;...
            40/3 40/3 40/3 40/3 40/3 40/3 40/3];
        F=zeros(size(X_e));
        for j=1:length(e)
            for k=1:length(de)
                F(k,j)=FuzzyController(e(j),de(k),g0,g1,h,rulebase,centerpoint,...
    width,functiontype,COGtype);
            end
        end
        set(13,'Position',[156   191   678   469],...
            'name','Control_Surface_Uniform_Center',...
            'PaperPosition',[156   191   678   469],...
            'PaperUnits','points',...
            'PaperPositionMode','auto')
        meshplot1=meshz(X_e,Y_de,F);
        set(meshplot1,'LineWidth',1,...
            'EdgeAlpha',1,...
            'Edgecolor','k',...
            'EdgeLighting','none');
        axis([-1 1 -10 10 -100 100])
        xlabel('e (rad)','FontSize',fontsize)
        ylabel('de/dt (rad/s)','FontSize',fontsize)
        zlabel('F (N)','FontSize',fontsize)
        grid on
        set(gca,'FontSize',fontsize);
        view(162,22);
        % figure 14: not uniform center points
        figure(14)
        centerpoint=[-pi/2 -pi/3 -pi/6 0 pi/6 pi/3 pi/2;...
            -pi/4 -pi/6 -pi/12 0 pi/12 pi/6 pi/4;...
            -60 -80/3 -20/3 0 20/3 80/3 60];
        width=[pi/3 pi/3 pi/3 pi/3 pi/3 pi/3 pi/3;...
            pi/6 pi/6 pi/6 pi/6 pi/6 pi/6 pi/6;...
            40/3 40/3 40/3 40/3 40/3 40/3 40/3];
        F=zeros(size(X_e));
        for j=1:length(e)
            for k=1:length(de)
                F(k,j)=FuzzyController(e(j),de(k),g0,g1,h,rulebase,centerpoint,...
    width,functiontype,COGtype);
            end
        end
        set(14,'Position',[156   191   678   469],...
            'name','Control_Surface_NotUniform_Center',...
            'PaperPosition',[156   191   678   469],...
            'PaperUnits','points',...
            'PaperPositionMode','auto')
        meshplot2=meshz(X_e,Y_de,F);
        set(meshplot2,'LineWidth',1,...
            'EdgeAlpha',1,...
            'Edgecolor','k',...
            'EdgeLighting','none');
        axis([-1 1 -10 10 -300 300])
        xlabel('e (rad)','FontSize',fontsize)
        ylabel('de/dt (rad/s)','FontSize',fontsize)
        zlabel('F (N)','FontSize',fontsize)
        grid on
        set(gca,'FontSize',fontsize);
        view(162,22);
        FigHandle(end+1)=13;
        FigHandle(end+1)=14;
        FigName{end+1}='Control_Surface_Uniform_Center';
        FigName{end+1}='Control_Surface_NotUniform_Center';
    else
        error(['Unknow experiment number: ' num2str(i)])
    end
end
if Save==1
    if length(unique(FigHandle))~=length(FigHandle)
        error('There are repeat elements in ''FigHandle''. Please check program.')
    end
    if length(unique(FigName))~=length(FigName)
        error('There are repeat elements in ''FigName''. Please check program.')
    end
    if exist(FigPath,'dir')~=7
        mkdir(FigPath);
    end
    for i=1:length(FigHandle)
        %saveas(FigHandle(i),[FigPath FigName{i}],'png');
        print(FigHandle(i),'-depsc2',[FigPath FigName{i} '.eps']);
    end
end
end