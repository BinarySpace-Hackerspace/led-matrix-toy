spacing = 15;
cubeHeight = 15;
width = (spacing * 8);
height = (spacing * 8);

//3dModel();
export();

module export()
{
    projection() 
        base ();
    
    for ( s = [0:13] )
        translate( [ 0, -7 - (s *(cubeHeight+2)), 0] ) dxfTab();
}

module 3dModel()
{
    base();
    tabs();
}

module base()
{
difference()
{
translate( [-(spacing/2)-1.5, -(spacing/2)-1.5, 1] ) cube( [width+3, height+3, 3] );

for (y = [0:7] )
for(x = [0:7] )
{
 translate( [(x * spacing), (y * spacing), 0] ) cylinder( r = 2.5, h = 8, $fn = 64 );
}
}

}


module tabs()
{
// tabs
cubeHeight = 15;

translate( [-spacing/2, -spacing/2, 4] )
{
    for ( x = [0:6] )
        translate( [(x * (spacing))-1.5 + spacing, -1.5, 0] ) cube( [3, width+3, cubeHeight] );
}

translate( [-spacing/2, -spacing/2, 4] )
{
    for ( y = [0:6] )
        translate( [-1.5, (y * (spacing))-1.5 + spacing, 0] ) cube( [width+3, 3, cubeHeight] );
}
}


module dxfTab()
{
projection ( )
rotate([90, 0, 0] )
difference()
{

translate( [-spacing/2, -spacing/2, 4] )
{
    for ( y = [0:0] )
        translate( [-1.5, (y * (spacing))-1.5 + spacing, 0] ) cube( [width+3, 3, cubeHeight] );
}

translate( [-spacing/2, -spacing/2, 4 + (cubeHeight/2)] )
{
    for ( x = [0:6] )
        translate( [(x * (spacing))-1.5 + spacing, -1.5, 0] ) cube( [3, width+3, cubeHeight] );
}

}
}