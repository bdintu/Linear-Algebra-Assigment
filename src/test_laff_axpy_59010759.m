a = randi( [ -2, 2 ], 1 );
x = randi( [ -2, 2 ], 4, 1 );
y = randi( [ -2, 2 ], 4, 1 );

z = randi( [ -2, 2 ], 3, 1 );

disp( 'column - column axpy' )
if ( isequal( laff_axpy_59010759( a, x, y ), a * x + y ) ) 
    disp( 'TEST PASSED' )
else
    disp( 'TEST FAILED' )
end

disp( ' ' )

disp( 'column - row axpy' )
if ( isequal( laff_axpy_59010759( a, x, y' ), a * x' + y' ) ) 
    disp( 'TEST PASSED' )
else
    disp( 'TEST FAILED' )
end

disp( ' ' )

disp( 'row - column axpy' )
if ( isequal( laff_axpy_59010759( a, x', y ), a * x + y ) ) 
    disp( 'TEST PASSED' )
else
    disp( 'TEST FAILED' )
end

disp( ' ' )

disp( 'row -> row axpy' )
if ( isequal( laff_axpy_59010759( a, x', y' ), a * x' + y' ) ) 
    disp( 'TEST PASSED' )
else
    disp( 'TEST FAILED' )
end

disp( ' ' )

disp( 'column - column axpy (wrong size)' )
if ( isequal( laff_axpy_59010759( a, x, z ), 'FAILED' ) ) 
    disp( 'TEST PASSED' )
else
    disp( 'TEST FAILED' )
end

disp( ' ' )

disp( 'column - row axpy (wrong size)' )
if ( isequal( laff_axpy_59010759( a, x, z' ), 'FAILED' ) ) 
    disp( 'TEST PASSED' )
else
    disp( 'TEST FAILED' )
end

disp( ' ' )

disp( 'row -> column (wrong size)' )
if ( isequal( laff_axpy_59010759( a, x', z ), 'FAILED' ) ) 
    disp( 'TEST PASSED' )
else
    disp( 'TEST FAILED' )
end

disp( ' ' )

disp( 'row -> row axpy (wrong size)' )
if ( isequal( laff_axpy_59010759( a, x', z' ), 'FAILED' ) ) 
    disp( 'TEST PASSED' )
else
    disp( 'TEST FAILED' )
end