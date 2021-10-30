# GPS-positioning

1.The code is used to calculate the GPS receiver’s position.

2.There are two data files using as the input of the code. The details are shown as follows.

Matrix A:

Column1: rcvr_tow; --receiver time of week(s)

Column 2: svid; -- satellite PRN number (1 – 32)

Column 3: toc; -- reference time of clock parameters (s)

Column 4: toe; -- reference time of ephemeris parameters (s)

Column 5: af0; -- clock correction coefficient – group delay (s)

Column 6: af1; -- clock correction coefficient (s/s)

Column 7: af2; -- clock correction coefficient (s/s/s)

Column 8: ura; -- user range accuracy (m)

Column 9: e; -- eccentricity (-)

Column 10: sqrta; -- square root of semi-major axis a (m**1/2)

Column 11: dn; -- mean motion correction (r/s)

Column 12: m0; -- mean anomaly at reference time (r)

Column 13: w; -- argument of perigee (r)

Column 14: omg0; -- right ascension (r)

Column 15: i0; -- inclination angle at reference time (r)

Column 16: odot; -- rate of right ascension (r/s)

Column 17: idot; -- rate of inclination angle (r/s)

Column 18: cus; -- argument of latitude correction, sine (r)

Column 19: cuc; -- argument of latitude correction, cosine (r)

Column 20: cis; -- inclination correction, sine (r)

Column 21: cic; -- inclination correction, cosine (r)

Column 22: crs; -- radius correction, sine (m)

Column 23: crc; -- radius correction, cosine (m)

Column 24: iod; -- issue of data number

Matrix B:

Column 1: rcvr_tow; -- receiver time of week (s)

Column 2: svid; -- satellite PRN number (1 – 32)

Column 3: pr; -- pseudorange (m)

Column 4: cycles; -- number of accumulated cycles

Column 5: phase; -- to convert to (0 – 359.99) mult. by 360/2048

Column 6: slp_dtct; -- 0 = no cycle slip detected; non 0 = cycle slip

Column 7: snr_dbhz; -- signal to noise ratio (dB-Hz)

3.The GPS constants using in the calculation are shown as follows:

Speed of light: c = 299792458.0 (m/s);

WGS 84 value of earth’s rotation rate: Wedot= 7.2921151467e-5 (r/s);

WGS 84 value of earth's universal gravitation constant: mu= 3.986005e+14 (m^3/s^2);

Relativistic correction term constant: F= (-4.442807633e-10);

4.The calculation do not contain the ionospheric and tropospheric corrections.
