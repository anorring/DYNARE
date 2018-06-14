%
% Status : main Dynare file 
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

clear all
clear global
tic;
global M_ oo_ options_ ys0_ ex0_ estimation_info
options_ = [];
M_.fname = 'as2007';
%
% Some global variables initialization
%
global_initialization;
diary off;
logname_ = 'as2007.log';
if exist(logname_, 'file')
    delete(logname_)
end
diary(logname_)
M_.exo_names = 'e_R';
M_.exo_names_tex = 'e\_R';
M_.exo_names = char(M_.exo_names, 'e_g');
M_.exo_names_tex = char(M_.exo_names_tex, 'e\_g');
M_.exo_names = char(M_.exo_names, 'e_z');
M_.exo_names_tex = char(M_.exo_names_tex, 'e\_z');
M_.endo_names = 'pie';
M_.endo_names_tex = 'pie';
M_.endo_names = char(M_.endo_names, 'y');
M_.endo_names_tex = char(M_.endo_names_tex, 'y');
M_.endo_names = char(M_.endo_names, 'R');
M_.endo_names_tex = char(M_.endo_names_tex, 'R');
M_.endo_names = char(M_.endo_names, 'g');
M_.endo_names_tex = char(M_.endo_names_tex, 'g');
M_.endo_names = char(M_.endo_names, 'z');
M_.endo_names_tex = char(M_.endo_names_tex, 'z');
M_.endo_names = char(M_.endo_names, 'YGR');
M_.endo_names_tex = char(M_.endo_names_tex, 'YGR');
M_.endo_names = char(M_.endo_names, 'INFL');
M_.endo_names_tex = char(M_.endo_names_tex, 'INFL');
M_.endo_names = char(M_.endo_names, 'INT');
M_.endo_names_tex = char(M_.endo_names_tex, 'INT');
M_.param_names = 'tau';
M_.param_names_tex = 'tau';
M_.param_names = char(M_.param_names, 'kap');
M_.param_names_tex = char(M_.param_names_tex, 'kap');
M_.param_names = char(M_.param_names, 'psi1');
M_.param_names_tex = char(M_.param_names_tex, 'psi1');
M_.param_names = char(M_.param_names, 'psi2');
M_.param_names_tex = char(M_.param_names_tex, 'psi2');
M_.param_names = char(M_.param_names, 'rhoR');
M_.param_names_tex = char(M_.param_names_tex, 'rhoR');
M_.param_names = char(M_.param_names, 'rhog');
M_.param_names_tex = char(M_.param_names_tex, 'rhog');
M_.param_names = char(M_.param_names, 'rhoz');
M_.param_names_tex = char(M_.param_names_tex, 'rhoz');
M_.param_names = char(M_.param_names, 'rr_steady');
M_.param_names_tex = char(M_.param_names_tex, 'rr\_steady');
M_.param_names = char(M_.param_names, 'pi_steady');
M_.param_names_tex = char(M_.param_names_tex, 'pi\_steady');
M_.param_names = char(M_.param_names, 'gam_steady');
M_.param_names_tex = char(M_.param_names_tex, 'gam\_steady');
M_.param_names = char(M_.param_names, 'std_R');
M_.param_names_tex = char(M_.param_names_tex, 'std\_R');
M_.param_names = char(M_.param_names, 'std_g');
M_.param_names_tex = char(M_.param_names_tex, 'std\_g');
M_.param_names = char(M_.param_names, 'std_z');
M_.param_names_tex = char(M_.param_names_tex, 'std\_z');
M_.exo_det_nbr = 0;
M_.exo_nbr = 3;
M_.endo_nbr = 8;
M_.param_nbr = 13;
M_.orig_endo_nbr = 8;
M_.aux_vars = [];
options_.varobs = [];
options_.varobs = 'YGR';
options_.varobs = char(options_.varobs, 'INFL');
options_.varobs = char(options_.varobs, 'INT');
options_.varobs_id = [ 6 7 8  ];
M_.Sigma_e = zeros(3, 3);
M_.H = 0;
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
erase_compiled_function('as2007_static');
erase_compiled_function('as2007_dynamic');
M_.lead_lag_incidence = [
 0 5 13;
 1 6 14;
 2 7 0;
 3 8 15;
 4 9 16;
 0 10 0;
 0 11 0;
 0 12 0;]';
M_.nstatic = 3;
M_.nfwrd   = 1;
M_.npred   = 1;
M_.nboth   = 3;
M_.equations_tags = {
};
M_.exo_names_orig_ord = [1:3];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(8, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(3, 1);
M_.params = NaN(13, 1);
M_.NNZDerivatives = zeros(3, 1);
M_.NNZDerivatives(1) = 31;
M_.NNZDerivatives(2) = 0;
M_.NNZDerivatives(3) = -1;
M_.params( 1 ) = 2;
tau = M_.params( 1 );
M_.params( 2 ) = 0.15;
kap = M_.params( 2 );
M_.params( 3 ) = 1.5;
psi1 = M_.params( 3 );
M_.params( 4 ) = 1;
psi2 = M_.params( 4 );
M_.params( 5 ) = 0.96;
rhoR = M_.params( 5 );
M_.params( 6 ) = 0.95;
rhog = M_.params( 6 );
M_.params( 7 ) = 0.65;
rhoz = M_.params( 7 );
M_.params( 8 ) = 0.4;
rr_steady = M_.params( 8 );
M_.params( 9 ) = 4.0;
pi_steady = M_.params( 9 );
M_.params( 10 ) = 0.5;
gam_steady = M_.params( 10 );
M_.params( 11 ) = 0.2;
std_R = M_.params( 11 );
M_.params( 12 ) = 0.8;
std_g = M_.params( 12 );
M_.params( 13 ) = 0.45;
std_z = M_.params( 13 );
global estim_params_
estim_params_.var_exo = [];
estim_params_.var_endo = [];
estim_params_.corrx = [];
estim_params_.corrn = [];
estim_params_.param_vals = [];
estim_params_.param_vals = [estim_params_.param_vals; 1, NaN, (-Inf), Inf, 2, 2, 0.5, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 2, NaN, (-Inf), Inf, 1, 0.2, 0.1, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 3, NaN, (-Inf), Inf, 2, 1.5, 0.25, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 4, NaN, (-Inf), Inf, 2, 0.5, 0.25, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 5, NaN, (-Inf), Inf, 1, 0.5, 0.2, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 6, NaN, (-Inf), Inf, 1, 0.8, 0.1, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 7, NaN, (-Inf), Inf, 1, 0.66, 0.15, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 8, NaN, (-Inf), Inf, 2, 0.8, 0.5, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 9, NaN, (-Inf), Inf, 2, 0.8, 0.5, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 10, NaN, (-Inf), Inf, 2, 0.8, 0.5, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 11, NaN, (-Inf), Inf, 4, 0.05, Inf, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 12, NaN, (-Inf), Inf, 4, 0.05, Inf, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 13, NaN, (-Inf), Inf, 4, 0.05, Inf, NaN, NaN, NaN ];
steady;
oo_.dr.eigval = check(M_,options_,oo_);
%
% SHOCKS instructions
%
make_ex_;
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (1)^2;
M_.Sigma_e(2, 2) = (1)^2;
M_.Sigma_e(3, 3) = (1)^2;
M_.sigma_e_is_diagonal = 1;
options_gsa = struct();
options_gsa.identification = 1;
options_gsa.morris_nliv = 4;
options_gsa.morris_ntra = 10;
dynare_sensitivity(options_gsa);
options_ident = struct();
options_ident.advanced = 1;
options_ident.max_dim_cova_group = 3;
dynare_identification(options_ident);
save('as2007_results.mat', 'oo_', 'M_', 'options_');


disp(['Total computing time : ' dynsec2hms(toc) ]);
diary off
