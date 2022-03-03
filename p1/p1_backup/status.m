function status(s,w,g,o,r,time)
    switch s
        case 1
            hold on;
            plot([w,w],[w,w],'o','markersize',20,'markerfacecolor','r');
            plot([w,w],[-w,-w],'o','markersize',20,'markerfacecolor','g');
            plot([-w,-w],[w,w],'o','markersize',20,'markerfacecolor','g');
            plot([-w,-w],[-w,-w],'o','markersize',20,'markerfacecolor','r');
            car('levelup',w,time);
            hold off;
        case 2
            hold on;
            plot([w,w],[w,w],'o','markersize',20,'markerfacecolor','y');
            plot([w,w],[-w,-w],'o','markersize',20,'markerfacecolor','y');
            plot([-w,-w],[w,w],'o','markersize',20,'markerfacecolor','y');
            plot([-w,-w],[-w,-w],'o','markersize',20,'markerfacecolor','y');
            car('levelup',w,time);
            hold off;
        otherwise
            hold on;
            plot([w,w],[w,w],'o','markersize',20,'markerfacecolor','g');
            plot([w,w],[-w,-w],'o','markersize',20,'markerfacecolor','r');
            plot([-w,-w],[w,w],'o','markersize',20,'markerfacecolor','r');
            plot([-w,-w],[-w,-w],'o','markersize',20,'markerfacecolor','g');
            car('levelup',w,time);
            hold off;
     end
end