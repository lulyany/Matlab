function lightcontrol(status,w)
      switch status
        case 3
   
            plot([w,w],[w,w],'o','markersize',20,'markerfacecolor','r');
            plot([w,w],[-w,-w],'o','markersize',20,'markerfacecolor','g');
            plot([-w,-w],[w,w],'o','markersize',20,'markerfacecolor','g');
            plot([-w,-w],[-w,-w],'o','markersize',20,'markerfacecolor','r');
            
        case 2
 
            plot([w,w],[w,w],'o','markersize',20,'markerfacecolor','y');
            plot([w,w],[-w,-w],'o','markersize',20,'markerfacecolor','y');
            plot([-w,-w],[w,w],'o','markersize',20,'markerfacecolor','y');
            plot([-w,-w],[-w,-w],'o','markersize',20,'markerfacecolor','y');
            
        otherwise
       
            plot([w,w],[w,w],'o','markersize',20,'markerfacecolor','g');
            plot([w,w],[-w,-w],'o','markersize',20,'markerfacecolor','r');
            plot([-w,-w],[w,w],'o','markersize',20,'markerfacecolor','r');
            plot([-w,-w],[-w,-w],'o','markersize',20,'markerfacecolor','g');
            
     end
end
            
        