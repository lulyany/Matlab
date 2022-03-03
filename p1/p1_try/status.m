function status()
    global s w;
    switch s
        case 1
            hold on;
            plot([w,w],[w,w],'o','markersize',20,'markerfacecolor','r');
            plot([w,w],[-w,-w],'o','markersize',20,'markerfacecolor','g');
            plot([-w,-w],[w,w],'o','markersize',20,'markerfacecolor','g');
            plot([-w,-w],[-w,-w],'o','markersize',20,'markerfacecolor','r');
            pause(1);
            hold off;
        case 2
            hold on;
            plot([w,w],[w,w],'o','markersize',20,'markerfacecolor','y');
            plot([w,w],[-w,-w],'o','markersize',20,'markerfacecolor','y');
            plot([-w,-w],[w,w],'o','markersize',20,'markerfacecolor','y');
            plot([-w,-w],[-w,-w],'o','markersize',20,'markerfacecolor','y');
            pause(1);
            hold off;
        otherwise
            hold on;
            plot([w,w],[w,w],'o','markersize',20,'markerfacecolor','g');
            plot([w,w],[-w,-w],'o','markersize',20,'markerfacecolor','r');
            plot([-w,-w],[w,w],'o','markersize',20,'markerfacecolor','r');
            plot([-w,-w],[-w,-w],'o','markersize',20,'markerfacecolor','g');
            pause(1);
            hold off;
     end
end