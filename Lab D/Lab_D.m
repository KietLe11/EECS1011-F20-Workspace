%bottom
patch([0,3,3,0,],[0,0,2,2,],[0,0,0,0,],'white', 'FaceAlpha', 0.5)

%wall red
patch([0,1,1,0],[0,0,0,0],[0,0,2,2],'red', 'FaceAlpha', 0.5)
patch([1,3,3,1],[0,0,0,0],[0,0,1,1],'red', 'FaceAlpha', 0.5)
patch([2,3,3,2],[0,0,0,0],[1,1,3,3],'red', 'FaceAlpha', 0.5)

patch([1,2,2,1],[1,1,1,1],[1,1,2,2],'red', 'FaceAlpha', 0.5)

%wall green
patch([3,3,3,3],[0,2,2,0],[0,0,1,1],'green', 'FaceAlpha', 0.5)
patch([3,3,3,3],[0,1,1,0],[1,1,3,3],'green', 'FaceAlpha', 0.5)

patch([2,2,2,2],[1,2,2,1],[1,1,2,2],'green', 'FaceAlpha', 0.5)
patch([1,1,1,1],[0,1,1,0],[1,1,2,2],'green', 'FaceAlpha', 0.5)

%wall black
patch([0,0,0,0],[0,2,2,0],[0,0,2,2],'black', 'FaceAlpha', 0.5)

patch([2,2,2,2],[0,1,1,0],[1,1,3,3],'black', 'FaceAlpha', 0.5)

%wall yellow 
patch([0,2,2,0],[2,2,2,2],[0,0,2,2],'yellow', 'FaceAlpha', 0.5)
patch([2,3,3,2],[2,2,2,2],[0,0,1,1],'yellow', 'FaceAlpha', 0.5)

patch([2,3,3,2],[1,1,1,1],[1,1,3,3],'yellow', 'FaceAlpha', 0.5)

%wall cyan 
patch([0,1,1,2,2,0],[0,0,1,1,2,2],[2,2,2,2,2,2],'cyan','FaceAlpha', 0.5)
patch([2,3,3,2],[0,0,1,1],[3,3,3,3],'cyan','FaceAlpha', 0.5)
patch([1,2,2,1],[0,0,1,1],[1,1,1,1],'cyan','FaceAlpha', 0.5)
patch([2,3,3,2],[1,1,2,2],[1,1,1,1],'cyan','FaceAlpha', 0.5)

