% MDS_DHI_put.m 
% Author:  Michael P. Ross
% Date = Sept. 6, 2016
% Description:  This script stores the relevant DHI data to the dhihd tree.

function MDS_DHI_put(shotnum,base_number,den_int_full,den_num_full,...
    centroid_abs,recon_dist,xmin,xmax,ymin,ymax,sign_twin,x_twin,y_twin)

import MDSplus.*
tree_string = 'dhihd';
dhihdTree = Tree(tree_string,shotnum,'EDIT');

%% create the nodes in the DHIHD tree:
try
    dhihdTree.addNode('base_number','NUMERIC');
catch
end
try
    dhihdTree.addNode('dhi_int','NUMERIC');
catch
end
try
    dhihdTree.addNode('dhi_inverted','NUMERIC');
catch
end
try
    dhihdTree.addNode('centroid_abs','NUMERIC');
catch
end
try
    dhihdTree.addNode('recon_dist','NUMERIC');
catch
end
try
    dhihdTree.addNode('xmin','NUMERIC');
    catch
end
try
    dhihdTree.addNode('xmax','NUMERIC');
    catch
end
try
    dhihdTree.addNode('ymin','NUMERIC');
    catch
end
try
    dhihdTree.addNode('ymax','NUMERIC');
    catch
end
try
    dhihdTree.addNode('sign_twin','NUMERIC');
    catch
end
try
    dhihdTree.addNode('x_twin','NUMERIC');
    catch
end
try
    dhihdTree.addNode('y_twin','NUMERIC');
catch
end

dhihdTree.write() % need to write the nodes to the tree before storing data

%% Storing data to the tree and creating tagnames:
current_node = dhihdTree.getNode('base_number');
current_node.putData(MDSarg(base_number));
try
    current_node.addTag('base_number');
catch
end

current_node = dhihdTree.getNode('dhi_int');
current_node.putData(MDSarg(((den_int_full'))));
try
    current_node.addTag('dhi_int');
catch
end

current_node = dhihdTree.getNode('dhi_inverted');
current_node.putData(MDSarg(((den_num_full'))));
try
    current_node.addTag('dhi_inverted');
catch
end

current_node = dhihdTree.getNode('centroid_abs');
current_node.putData(MDSarg(centroid_abs));
try
    current_node.addTag('centroid_abs');
catch
end

current_node = dhihdTree.getNode('recon_dist');
current_node.putData(MDSarg(recon_dist));
try
    current_node.addTag('recon_dist');
catch
end

current_node = dhihdTree.getNode('xmin');
current_node.putData(MDSarg(xmin));
try
    current_node.addTag('xmin');
catch
end

current_node = dhihdTree.getNode('xmax');
current_node.putData(MDSarg(xmax));
try
    current_node.addTag('xmax');
catch
end

current_node = dhihdTree.getNode('ymin');
current_node.putData(MDSarg(ymin));
try
    current_node.addTag('ymin');
catch
end

current_node = dhihdTree.getNode('ymax');
current_node.putData(MDSarg(ymax));
try
    current_node.addTag('ymax');
catch
end

current_node = dhihdTree.getNode('sign_twin');
current_node.putData(MDSarg(sign_twin));
try
    current_node.addTag('sign_twin');
catch
end

current_node = dhihdTree.getNode('x_twin');
current_node.putData(MDSarg((x_twin)));
try
    current_node.addTag('x_twin');
catch
end

current_node = dhihdTree.getNode('y_twin');
current_node.putData(MDSarg((y_twin)));
try
    current_node.addTag('y_twin');
catch
end

dhihdTree.write()
dhihdTree.close()