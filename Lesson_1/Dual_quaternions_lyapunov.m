%% Dual quaternion traslations and rotations
clc, clear all, close all;

%% Definition first transformation
include_namespace_dq
%% the position only has values in i j k
td = 1.25*i_ +1.25*j_;
angle_d = pi/4;
rd = cos(angle_d/2) + k_*sin(angle_d/2);
xd = rd + 0.5*E_*td*rd
% norm(xd);
% 
% %% Desired Dual quaternion
% t1 = 1.25*i_ +1.25*j_;
% angle_1 = 0;
% r1 = cos(angle_1/2) + k_*sin(angle_1/2);
% x1 = r1 + 0.5*E_*t1*r1
% x1_traslation = translation(x1)
% norm(x1);

%% get Error Using log form
% error = x1*xd'
% error
% error_p = D(error)
% error_d = P(error)
% 
% error_p = error_p.q(1:4)
% error_d = error_d.q(1:4)
% 
% log_q = norm(quaternion_log(error_p'))^2 +E_*()
% error_r_c = rotation(error')
% error_t_c = translation(error')
% 
% %% Calculate the error in primal and dual part
% xe_log = log(error_r) + 0.5*E_*error_t
% xe_log_c = log(error_r_c) + 0.5*E_*error_t_c
% 
% 
% V_1 = DQ.C8*haminus8(xd')*Q8(error)*vec6(log(error))
% V_2 = 2*norm(log(error))
% % angle_1/2
% log_q = quaternion_log([0.923879532511287, 0, 0, 0.382683432365090])