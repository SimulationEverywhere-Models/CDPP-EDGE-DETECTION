[top]
components : edge

[edge]
type : cell
width : 30
height : 30
delay : transport
defaultDelayTime : 100
border : wrapped 
neighbors : edge(-1,-1) edge(-1,0) edge(-1,1) 
neighbors : edge(0,-1)  edge(0,0)  edge(0,1)
neighbors : edge(1,-1)  edge(1,0)  edge(1,1)
initialvalue : 0
InitialCellsValue : edge.val
localtransition : edge-rule

[edge-rule]
rule : 0 100 { (0,0) = 1 and trueCount > 7 } 
rule : 1 100 { (0,0) = 1 and trueCount <= 7 and trueCount >2 } 
rule : 0 100 { t } 