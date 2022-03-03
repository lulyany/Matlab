function roaddrawer()
    global w;
    hold on;    
    plot([-5*w,-w],[w,w],'k',[-5*w,-w],[-w,-w],'k','LineWidth',5);
    plot([w,5*w],[w,w],'k',[w,5*w],[-w,-w],'k','LineWidth',5);
    plot([w,w],[-5*w,-w],'k',[-w,-w],[-5*w,-w],'k','LineWidth',5);
    plot([w,w],[w,5*w],'k',[-w,-w],[w,5*w],'k','LineWidth',5);
    plot([w,5*w],[0,0],'--k',[-5*w,-w],[0,0],'--k','LineWidth',1);
    plot([0,0],[w,5*w],'--k',[0,0],[-5*w,-w],'--k','LineWidth',1);  
end