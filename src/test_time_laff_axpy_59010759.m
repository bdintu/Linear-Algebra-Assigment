limit = 1000;
size = 10;
while size <= limit
tic
    for time=1:limit
        
        a = randi( [ -2, 2 ], 1 );
        x = randi( [ -2, 2 ], size, 1 );
        y = randi( [ -2, 2 ], size, 1 );

        laff_axpy_59010759( a, x, y );

    end
fprintf('Size : %5d, 1,000 times : ', size); 
toc
size = 10*size;
end