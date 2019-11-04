limit = 1000;
size = 10;
while size <= limit
tic
    for time=1:limit
        
    x = randi( [ -2, 2 ], size, 1 );
    y = randi( [ -2, 2 ], size, 1 );

    Dot_unb_59010759( 0, x, y );

    end
fprintf('Size : %5d, 1,000 times : ', size); 
toc
size = 10*size;
end