%blue block 1
patch([0 0 0 0], [1 1 5 5],  [0 1 1 0], 'blue')
patch([0 0 1 1], [5 1 1 5],  [1 1 1 1], 'blue')

%blue block 2
patch([0 0 0 0], [1 0 0 1],  [0 0 1 1], 'blue')
patch([0 4 4 0], [0 0 0 0],  [0 0 1 1], 'blue')
patch([0 4 4 0], [0 0 1 1],  [1 1 1 1], 'blue')

%pink block
patch([3 3 3 3], [1 1 5 5],  [0 1 1 0], 'm')
patch([3 4 4 3], [1 1 5 5],  [1 1 1 1], 'm')

axis('equal')
view([-1 -1 1])