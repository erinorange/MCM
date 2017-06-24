function [plaza,v,vmax]=random_slow(plaza,v,vmax,probslow,t);
    a = mod(t,15)
    if t>=15 && ( mod(t,15) ==0 || mod(t,15) == 1 || mod(t,15) == 2 || mod(t,15) == 3 || mod(t,15) == 4)
        probslow =1 ;
    end
    [L,W]=size(plaza);
    for lanes=2:W-1;
        temp=find(plaza(:,lanes)==1);
        nn=length(temp); 
        for k=1:nn;
            i=temp(k);
            if(rand<=probslow)
                v(i,lanes)=max(v(i,lanes)-1,0);
            end
        end
    end
end