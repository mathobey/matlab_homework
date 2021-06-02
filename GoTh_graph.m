nodes = readtable('g_nodes.csv');
edges = readtable('g_edges.csv');
EndNodes = string([edges{:, 'Source'} edges{:, 'Target'}]);
Weight = edges{:, 'Weight'};
EdgeTable = table(EndNodes,Weight);
Name = string(nodes{:, 'Id'});
Fancy_name = string(nodes{:, 'Label'});
NodeTable = table(Name,Fancy_name);
G = digraph(EdgeTable,NodeTable);
plot(G,'NodeLabel',G.Nodes.Fancy_name,'EdgeLabel',G.Edges.Weight);




