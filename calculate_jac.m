clear all 
clc

%% forward geometry 
syms l1 l2 l3 q1 q2 q3

rotation = [cos(q1), -sin(q1), 0; sin(q1), cos(q1), 0; 0, 0, 1]
unrot_r = [l1 + l2*cos(q2)+l3*cos(q2+q3); 0; -(l2*sin(q2)+l3*sin(q2+q3))]
r = rotation * unrot_r

jac = jacobian(r, [q1, q2, q3])

%exported_jacobian = latex(jac)