A = [440992.001734540  5    4.464000e+005    4.464000e+005    1.890743e-004    1.932676e-012    0.000000e+000    3.330000e+001            1.467708e-003            5.153732e+003            5.170930e-009           -1.755016e+000           -7.164009e-003            1.554963e+000            9.390960e-001   -8.517855e-009    4.096599e-010    5.774200e-006    3.652647e-006   -2.607703e-008   -2.793968e-008    6.896875e+001    2.565000e+002  38
440992.001734540  6    4.463840e+005    4.463840e+005   -9.778887e-008    2.273737e-013    0.000000e+000    3.330000e+001            6.635193e-003            5.153754e+003            4.879846e-009           -8.983229e-001           -2.494275e+000            2.657482e+000            9.540098e-001   -8.419994e-009   -3.257279e-010    5.504116e-006   -2.851710e-006    1.117587e-007    1.695007e-007   -5.640625e+001    2.670000e+002 188
440992.001734540 17    4.464000e+005    4.464000e+005   -2.049287e-004   -9.094947e-013    0.000000e+000    3.330000e+001            1.052128e-002            5.153698e+003            3.808730e-009           -1.273045e+000            2.777991e+000           -2.496655e+000            9.846235e-001   -7.678534e-009    2.835832e-010    1.179054e-005    5.215406e-007   -1.192093e-007   -6.146729e-008    1.384375e+001    1.675313e+002 156
440992.001734540 30    4.464000e+005    4.464000e+005   -1.003547e-005   -1.250555e-012    0.000000e+000    3.330000e+001            5.429892e-003            5.153659e+003            4.984136e-009            2.388640e+000            1.530028e+000            1.583080e+000            9.464127e-001   -8.348919e-009    3.607293e-010    5.416572e-006    3.287569e-006   -2.980232e-008    5.960464e-008    6.325000e+001    2.653750e+002  73
440992.001734540 10    4.464000e+005    4.464000e+005    3.325846e-005    5.684342e-013    0.000000e+000    3.330000e+001            3.396580e-003            5.153676e+003            4.721268e-009            2.426368e+000           -1.981142e-001           -1.549648e+000            9.695292e-001   -8.256772e-009    3.968023e-010    5.507842e-006    3.110617e-006    9.872019e-008   -1.303852e-008    5.759375e+001    2.786250e+002 108
440992.001734540 23    4.464000e+005    4.464000e+005    1.039403e-005    4.547474e-013    0.000000e+000    3.330000e+001            1.373207e-002            5.153630e+003            4.504473e-009            2.417956e+000           -1.977005e+000           -1.504057e+000            9.720093e-001   -7.960689e-009    3.028698e-010    5.211681e-006    2.276152e-006   -2.253801e-007    5.587935e-008    4.740625e+001    2.822188e+002 238
440992.001734540 22    4.464000e+005    4.464000e+005    2.229265e-004    4.115464e-011    0.000000e+000    3.330000e+001            1.187240e-002            5.153614e+003            5.282720e-009            2.032610e+000            4.356351e-001            1.550981e+000            9.359631e-001   -8.571429e-009    2.982267e-010    5.748123e-006    3.391877e-006    7.450581e-008   -2.663583e-007    6.593750e+001    2.583438e+002  97
440992.001734540 26    4.463840e+005    4.463840e+005    2.812780e-004    5.309175e-011    0.000000e+000    3.330000e+001            1.104611e-002            5.153579e+003            4.855559e-009            7.299450e-001           -1.074208e-001           -4.947527e-001            9.604343e-001   -8.412136e-009   -5.003780e-010    5.435199e-006   -3.581867e-006    1.043081e-007    2.179295e-007   -6.859375e+001    2.694375e+002 195]; % ephemeris data

B = [440992.001734540  5     25008620.741      2846308 1783  0  39
440992.001734540  6     20840807.098      2549752 1589  0  49
440992.001734540 17     22121590.622      2441439  484  0  49
440992.001734540 30     22443304.821      2805360  973  0  48
440992.001734540 10     23351253.580      2798848 1484  0  44
440992.001734540 23     24008879.898      2294698 1029  0  43
440992.001734540 22     24428896.695      2373012  554  0  45
440992.001734540 26     24393998.207      2343992 1668  0  38]; % raw ranging information

rcvr_tow = A(:,1); % receiver time of week
toc = A(:,3); % reference time of clock parameters
toe = A(:,4); % reference time of ephemeris parameters
af0 = A(:,5); % clock correction coefficient – group delay
af1 = A(:,6); % clock correction coefficient
af2 = A(:,7); % clock correction coefficient
e = A(:,9); % eccentricity
sqrta = A(:,10); % square root of semi-major axis a
dn = A(:,11); % mean motion correction
M0 = A(:,12); % mean anomaly at reference time
w = A(:,13); % argument of perigee
omg0 = A(:,14); % right ascension
i0 = A(:,15); % inclination angle at reference time
odot = A(:,16); % rate of right ascension
idot = A(:,17); % rate of inclination angle
cus = A(:,18); % argument of latitude correction, sine
cuc = A(:,19); % argument of latitude correction, cosine
cis = A(:,20); % inclination correction, sine
cic = A(:,21); % inclination correction, cosine
crs = A(:,22); % radius correction, sine
crc = A(:,23); % radius correction, cosine
pr = B(:,3); % pseudorange
c = 299792458.0; % speed of light
Wedot = 7.2921151467e-5; % WGS 84 value of earth’s rotation rate
mu= 3.986005e+14; % WGS 84 value of earth's universal gravitation constant
F = -4.442807633e-10; % relativistic correction term constant

%% Step1: Calculate the XYZ positions for all satellite.

SA = sqrta.^2;
n0 = sqrt(mu.*SA.^(-3)); % computed mean motion
n = n0+dn; % corrected mean motion
tk = rcvr_tow-pr./c-toe; % time from ephemeris reference epoch
Mk = M0+n.*tk; % mean anomaly
Ek = Mk; i = 1;
while i<9
while abs(Ek(i)-e(i).*sin(Ek(i))-Mk(i))~=0
    Ek(i) = e(i).*sin(Ek(i))+Mk(i);
end
i = i+1;
end % Kepler's Equation for eccentric anomaly
vk = atan2(sqrt(1-e.^2).*sin(Ek),cos(Ek)-e); % true anomaly
phi_k = vk+w; % argument of latitude
duk = cus.*sin(2*phi_k)+cuc.*cos(2*phi_k); % agument of latitude correction
drk = crs.*sin(2*phi_k)+crc.*cos(2*phi_k); % radius correction
dik = cis.*sin(2*phi_k)+cic.*cos(2*phi_k); % inclination correction
uk = phi_k+duk; % corrected argument of latitude
rk = sqrta.^2.*(1-e.*cos(Ek))+drk; % corrected radius
ik = i0+dik+idot.*tk; % corrected inclination
xk1 = rk.*cos(uk);
yk1 = rk.*sin(uk); % positions in orbital
omgk = omg0+(odot-Wedot).*tk-Wedot.*toe; % corrected longitude of ascending node
Xk = xk1.*cos(omgk)-yk1.*cos(ik).*sin(omgk);
Yk = xk1.*sin(omgk)+yk1.*cos(ik).*cos(omgk);
Zk = yk1.*sin(ik); % earth-fixed coordinate

%% Step2: Determine the broadcast satellite clock errors to correct pseudoranges.

dtr = F.*e.*sqrta.*sin(Ek); % correction due to relativistic effects
dtsv = af0+af1.*(rcvr_tow-toc)+af2.*(rcvr_tow-toc).^2+dtr;
prc = pr+c.*dtsv; % pseudorange correction.

%% Step3: Determine the user positions

Xu0 = transpose([-2694685.473 -2694685.473 -2694685.473 -2694685.473 -2694685.473 -2694685.473 -2694685.473 -2694685.473]);
Yu0 = transpose([-4293642.366 -4293642.366 -4293642.366 -4293642.366 -4293642.366 -4293642.366 -4293642.366 -4293642.366]);
Zu0 = transpose([3857878.924 3857878.924 3857878.924 3857878.924 3857878.924 3857878.924 3857878.924 3857878.924]);
du0 = transpose([0 0 0 0 0 0 0 0]); % input initial user position
dx = transpose([1 1 1 1 1 1 1 1]);
while abs(dx(1))>0.0001
   i = 1;
   while i<9
       Xu0(i) = Xu0(i)+dx(1);
       Yu0(i) = Yu0(i)+dx(2);
       Zu0(i) = Zu0(i)+dx(3);
       du0(i) = du0(i)+dx(4);
       i = i+1;
  end
pr0 = sqrt((Xk-Xu0).^2+(Yk-Yu0).^2+(Zk-Zu0).^2)+du0; % approximate pseudorange
r0 = sqrt((Xk-Xu0).^2+(Yk-Yu0).^2+(Zk-Zu0).^2);
ax = (Xk-Xu0)./r0; ay = (Yk-Yu0)./r0; az = (Zk-Zu0)./r0; 
dpr0 = pr0-prc; 
dtu1 = transpose([-1 -1 -1 -1 -1 -1 -1 -1]); % linearized pseudorange equation parameters
H = [ax ay az dtu1];
dx = (transpose(H)*H)^(-1)*transpose(H)*dpr0;
end
result_X = [Xu0(1) Yu0(1) Zu0(1)];