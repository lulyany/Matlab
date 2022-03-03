function roaddrawer(w)
    hold on;    
    plot([-6*w,-w],[w,w],'k',[-6*w,-w],[-w,-w],'k','LineWidth',5);
    plot([w,6*w],[w,w],'k',[w,6*w],[-w,-w],'k','LineWidth',5);
    plot([w,w],[-6*w,-w],'k',[-w,-w],[-6*w,-w],'k','LineWidth',5);
    plot([w,w],[w,6*w],'k',[-w,-w],[w,6*w],'k','LineWidth',5);
    plot([w,6*w],[0,0],'--k',[-6*w,-w],[0,0],'--k','LineWidth',1);
    plot([0,0],[w,6*w],'--k',[0,0],[-6*w,-w],'--k','LineWidth',1);
end