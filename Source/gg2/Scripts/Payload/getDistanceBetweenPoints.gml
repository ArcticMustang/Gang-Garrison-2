
distance[argument0] = 0;
totalDistance = 0;

        var bestPos,bestDist,dist,cc; 
        dist = 999999;
        bestDist=dist;

        
    for (cc=0;cc<ds_list_size(global.payload_path);cc+=1) 
    {
        dist=point_distance(global.cp[argument0].x,global.cp[argument0].y,getNodeStatus(cc,'x'),getNodeStatus(cc,'y'));
        if (cc<global.cp[argument0].pathPosition) && (ds_list_find_value(global.payload_path,cc).x != 0 || getNodeStatus(cc,'y') != 0){
            bestDist = dist;
            distance[argument0]+=point_distance(
                getNodeStatus(cc+1,'x'),
                getNodeStatus(cc+1,'y'),
                getNodeStatus(cc,'x'),
                getNodeStatus(cc,'y'));
        }
        
        if (getNodeStatus(cc,'x')!= 0 || getNodeStatus(cc,'y') != 0){
        totalDistance+=point_distance(
            getNodeStatus(cc+1,'x'),
            getNodeStatus(cc+1,'y'),
            getNodeStatus(cc,'x'),
            getNodeStatus(cc,'y'));
            with ds_list_find_index(global.payload_path,cc) distance=other.totalDistance;
        }
    }
totalDistance-=point_distance(0,0,getNodeStatus(ds_list_size(global.payload_path)-1,'x'),getNodeStatus(ds_list_size(global.payload_path)-1,'y'));
