limit = 1000;
size = 10;
while size <= limit
tic
    for time=1:limit
        
    A = randi( [ -2, 2 ], size, size );
    x = randi( [ -2, 2 ], size, 1 );
    y = randi( [ -2, 2 ], size, 1 );

    Trmvp_ln_unb_var1_59010759( A, x, y );

    end
fprintf('Size : %5d, 1,000 times : ', size); 
toc
size = 10*size;
end