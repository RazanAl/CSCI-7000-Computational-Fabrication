﻿;START GCODE
M201 X1000 Y1000 Z200 E5000 ; sets maximum accelerations, mm/sec^2
M203 X200 Y200 Z12 E120 ; sets maximum feedrates, mm / sec
M204 S1250 T1250 ; sets acceleration (S) and retract acceleration (R), mm/sec^2
M205 X8.00 Y8.00 Z0.40 E4.50 ; sets the jerk limits, mm/sec
M205 S0 T0 ; sets the minimum extruding and travel feed rate, mm/sec
;TYPE:Custom
M862.3 P "MK3S" ; printer model check
M862.1 P0.4 ; nozzle diameter check
M115 U3.13.3 ; tell printer latest fw version
G90 ; use absolute coordinates
M83 ; extruder relative mode
M104 S215 ; set extruder temp
M140 S60 ; set bed temp
M190 S60 ; wait for bed temp
M109 S215 ; wait for extruder temp
G28 W ; home all without mesh bed level
G80 X86.6877 Y64.7708 W85.2412 H59.1573 ; mesh bed levelling
G1 Z0.2 F720
G1 Y-3 F1000 ; go outside print area
G92 E0
G1 X60 E9 F1000 ; intro line
G1 X100 E12.5 F1000 ; intro line
G92 E0
M221 S95
; Don't change E values below. Excessive value can damage the printer.
M907 E538 ; set extruder motor current
G21 ; set units to millimeters
G90 ; use absolute coordinates
M83 ; use relative distances for extrusion
M900 K0.05 ; Filament gcode LA 1.5
M900 K30 ; Filament gcode LA 1.0
M107
G1 Z0.200 F720
G1 X96.000 Y109.309 F1200
G1 Y100.650 E0.44886 F600
G1 X114.997 Y105.250 F1200
G1 X114.990 Y105.450 E0.01037 F600
G1 X114.979 Y105.650 E0.01037 F600
G1 X114.968 Y105.799 E0.00778 F600
G1 X114.955 Y105.949 E0.00778 F600
G1 X114.934 Y106.147 E0.01037 F600
G1 X114.909 Y106.346 E0.01037 F600
G1 X114.880 Y106.544 E0.01037 F600
G1 X114.847 Y106.741 E0.01037 F600
G1 X114.810 Y106.938 E0.01037 F600
G1 X114.780 Y107.085 E0.00778 F600
G1 X114.748 Y107.231 E0.00778 F600
G1 X114.701 Y107.426 E0.01037 F600
G1 X114.651 Y107.619 E0.01037 F600
G1 X114.596 Y107.812 E0.01037 F600
G1 X114.538 Y108.003 E0.01037 F600
G1 X114.476 Y108.193 E0.01037 F600
G1 X114.411 Y108.382 E0.01037 F600
G1 X114.341 Y108.569 E0.01037 F600
G1 X114.268 Y108.756 E0.01037 F600
G1 X114.191 Y108.940 E0.01037 F600
G1 X114.110 Y109.123 E0.01037 F600
G1 X114.026 Y109.305 E0.01037 F600
G1 X113.938 Y109.484 E0.01037 F600
G1 X113.847 Y109.662 E0.01037 F600
G1 X113.776 Y109.794 E0.00778 F600
G1 X113.703 Y109.925 E0.00778 F600
G1 X113.603 Y110.098 E0.01037 F600
G1 X113.499 Y110.269 E0.01037 F600
G1 X113.392 Y110.438 E0.01037 F600
G1 X113.281 Y110.605 E0.01037 F600
G1 X113.168 Y110.770 E0.01037 F600
G1 X113.051 Y110.932 E0.01037 F600
G1 X112.930 Y111.092 E0.01037 F600
G1 X112.838 Y111.210 E0.00778 F600
G1 X112.744 Y111.327 E0.00778 F600
G1 X112.616 Y111.480 E0.01037 F600
G1 X112.485 Y111.631 E0.01037 F600
G1 X112.351 Y111.780 E0.01037 F600
G1 X112.214 Y111.925 E0.01037 F600
G1 X112.074 Y112.068 E0.01037 F600
G1 X111.931 Y112.208 E0.01037 F600
G1 X111.785 Y112.345 E0.01037 F600
G1 X111.637 Y112.480 E0.01037 F600
G1 X111.486 Y112.611 E0.01037 F600
G1 X111.333 Y112.739 E0.01037 F600
G1 X111.177 Y112.864 E0.01037 F600
G1 X111.018 Y112.986 E0.01037 F600
G1 X110.857 Y113.105 E0.01037 F600
G1 X110.694 Y113.220 E0.01037 F600
G1 X110.529 Y113.333 E0.01037 F600
G1 X110.361 Y113.442 E0.01037 F600
G1 X110.191 Y113.547 E0.01037 F600
G1 X110.019 Y113.649 E0.01037 F600
G1 X109.845 Y113.748 E0.01037 F600
G1 X109.669 Y113.843 E0.01037 F600
G1 X109.491 Y113.935 E0.01037 F600
G1 X109.312 Y114.023 E0.01037 F600
G1 X109.130 Y114.107 E0.01037 F600
G1 X108.947 Y114.188 E0.01037 F600
G1 X108.763 Y114.265 E0.01037 F600
G1 X108.577 Y114.338 E0.01037 F600
G1 X108.389 Y114.408 E0.01037 F600
G1 X108.201 Y114.474 E0.01037 F600
G1 X108.010 Y114.536 E0.01037 F600
G1 X107.867 Y114.580 E0.00778 F600
G1 X107.771 Y114.608 E0.00518 F600
G1 X107.627 Y114.649 E0.00778 F600
G1 X107.433 Y114.699 E0.01037 F600
G1 X107.239 Y114.746 E0.01037 F600
G1 X107.043 Y114.789 E0.01037 F600
G1 X106.847 Y114.828 E0.01037 F600
G1 X106.650 Y114.863 E0.01037 F600
G1 X106.453 Y114.894 E0.01037 F600
G1 X106.255 Y114.921 E0.01037 F600
G1 X106.056 Y114.944 E0.01037 F600
G1 X105.857 Y114.963 E0.01037 F600
G1 X105.657 Y114.978 E0.01037 F600
G1 X105.458 Y114.989 E0.01037 F600
G1 X105.258 Y114.997 E0.01037 F600
G1 X105.058 Y115.000 E0.01037 F600
G1 X104.858 Y114.999 E0.01037 F600
G1 X104.658 Y114.994 E0.01037 F600
G1 X104.458 Y114.985 E0.01037 F600
G1 X104.259 Y114.972 E0.01037 F600
G1 X104.059 Y114.956 E0.01037 F600
G1 X103.860 Y114.935 E0.01037 F600
G1 X103.662 Y114.910 E0.01037 F600
G1 X103.464 Y114.881 E0.01037 F600
G1 X103.267 Y114.849 E0.01037 F600
G1 X103.070 Y114.812 E0.01037 F600
G1 X102.923 Y114.782 E0.00778 F600
G1 X102.777 Y114.750 E0.00778 F600
G1 X102.582 Y114.703 E0.01037 F600
G1 X102.389 Y114.653 E0.01037 F600
G1 X102.196 Y114.599 E0.01037 F600
G1 X102.005 Y114.541 E0.01037 F600
G1 X101.815 Y114.479 E0.01037 F600
G1 X101.626 Y114.413 E0.01037 F600
G1 X101.438 Y114.344 E0.01037 F600
G1 X101.252 Y114.271 E0.01037 F600
G1 X101.067 Y114.194 E0.01037 F600
G1 X100.884 Y114.114 E0.01037 F600
G1 X100.703 Y114.029 E0.01037 F600
G1 X100.523 Y113.942 E0.01037 F600
G1 X100.345 Y113.850 E0.01037 F600
G1 X100.213 Y113.780 E0.00778 F600
G1 X100.082 Y113.707 E0.00778 F600
G1 X99.909 Y113.607 E0.01037 F600
G1 X99.737 Y113.503 E0.01037 F600
G1 X99.568 Y113.396 E0.01037 F600
G1 X99.402 Y113.286 E0.01037 F600
G1 X99.237 Y113.172 E0.01037 F600
G1 X99.075 Y113.055 E0.01037 F600
G1 X98.915 Y112.935 E0.01037 F600
G1 X98.796 Y112.843 E0.00778 F600
G1 X98.680 Y112.749 E0.00778 F600
G1 X98.526 Y112.621 E0.01037 F600
G1 X98.375 Y112.490 E0.01037 F600
G1 X98.226 Y112.356 E0.01037 F600
G1 X98.080 Y112.219 E0.01037 F600
G1 X97.937 Y112.079 E0.01037 F600
G1 X97.797 Y111.937 E0.01037 F600
G1 X97.660 Y111.791 E0.01037 F600
G1 X97.526 Y111.643 E0.01037 F600
G1 X97.394 Y111.492 E0.01037 F600
G1 X97.266 Y111.339 E0.01037 F600
G1 X97.141 Y111.183 E0.01037 F600
G1 X97.019 Y111.025 E0.01037 F600
G1 X96.900 Y110.864 E0.01037 F600
G1 X96.784 Y110.701 E0.01037 F600
G1 X96.672 Y110.535 E0.01037 F600
G1 X96.563 Y110.368 E0.01037 F600
G1 X96.457 Y110.198 E0.01037 F600
G1 X96.355 Y110.026 E0.01037 F600
G1 X96.256 Y109.852 E0.01037 F600
G1 X96.161 Y109.676 E0.01037 F600
G1 X96.069 Y109.498 E0.01037 F600
G1 X95.981 Y109.319 E0.01037 F600
G1 X95.896 Y109.138 E0.01037 F600
G1 X95.815 Y108.955 E0.01037 F600
G1 X95.738 Y108.770 E0.01037 F600
G1 X95.665 Y108.584 E0.01037 F600
G1 X95.595 Y108.397 E0.01037 F600
G1 X95.529 Y108.208 E0.01037 F600
G1 X95.466 Y108.018 E0.01037 F600
G1 X95.422 Y107.875 E0.00778 F600
G1 X95.394 Y107.779 E0.00518 F600
G1 X95.353 Y107.634 E0.00778 F600
G1 X95.303 Y107.441 E0.01037 F600
G1 X95.256 Y107.247 E0.01037 F600
G1 X95.213 Y107.051 E0.01037 F600
G1 X95.174 Y106.855 E0.01037 F600
G1 X95.139 Y106.658 E0.01037 F600
G1 X95.107 Y106.461 E0.01037 F600
G1 X95.080 Y106.263 E0.01037 F600
G1 X95.057 Y106.064 E0.01037 F600
G1 X95.038 Y105.865 E0.01037 F600
G1 X95.022 Y105.665 E0.01037 F600
G1 X95.011 Y105.466 E0.01037 F600
G1 X95.004 Y105.266 E0.01037 F600
G1 X95.000 Y105.066 E0.01037 F600
G1 X95.001 Y104.866 E0.01037 F600
G1 X95.006 Y104.666 E0.01037 F600
G1 X95.014 Y104.466 E0.01037 F600
G1 X95.027 Y104.267 E0.01037 F600
G1 X95.044 Y104.067 E0.01037 F600
G1 X95.064 Y103.868 E0.01037 F600
G1 X95.089 Y103.670 E0.01037 F600
G1 X95.118 Y103.472 E0.01037 F600
G1 X95.150 Y103.275 E0.01037 F600
G1 X95.187 Y103.078 E0.01037 F600
G1 X95.216 Y102.931 E0.00778 F600
G1 X95.249 Y102.784 E0.00778 F600
G1 X95.295 Y102.590 E0.01037 F600
G1 X95.345 Y102.396 E0.01037 F600
G1 X95.399 Y102.204 E0.01037 F600
G1 X95.457 Y102.012 E0.01037 F600
G1 X95.519 Y101.822 E0.01037 F600
G1 X95.584 Y101.633 E0.01037 F600
G1 X95.653 Y101.445 E0.01037 F600
G1 X95.726 Y101.259 E0.01037 F600
G1 X95.803 Y101.075 E0.01037 F600
G1 X95.883 Y100.891 E0.01037 F600
G1 X95.967 Y100.710 E0.01037 F600
G1 X96.055 Y100.530 E0.01037 F600
G1 X96.146 Y100.352 E0.01037 F600
G1 X96.241 Y100.176 E0.01037 F600
G1 X96.339 Y100.002 E0.01037 F600
G1 X96.441 Y99.830 E0.01037 F600
G1 X96.546 Y99.659 E0.01037 F600
G1 X96.654 Y99.491 E0.01037 F600
G1 X96.766 Y99.326 E0.01037 F600
G1 X96.881 Y99.162 E0.01037 F600
G1 X97.000 Y99.001 E0.01037 F600
G1 X97.121 Y98.842 E0.01037 F600
G1 X97.246 Y98.686 E0.01037 F600
G1 X97.374 Y98.532 E0.01037 F600
G1 X97.505 Y98.381 E0.01037 F600
G1 X97.638 Y98.232 E0.01037 F600
G1 X97.775 Y98.086 E0.01037 F600
G1 X97.915 Y97.943 E0.01037 F600
G1 X98.058 Y97.803 E0.01037 F600
G1 X98.203 Y97.665 E0.01037 F600
G1 X98.351 Y97.531 E0.01037 F600
G1 X98.502 Y97.399 E0.01037 F600
G1 X98.655 Y97.271 E0.01037 F600
G1 X98.811 Y97.146 E0.01037 F600
G1 X98.969 Y97.023 E0.01037 F600
G1 X99.130 Y96.904 E0.01037 F600
G1 X99.293 Y96.789 E0.01037 F600
G1 X99.458 Y96.676 E0.01037 F600
G1 X99.626 Y96.567 E0.01037 F600
G1 X99.795 Y96.461 E0.01037 F600
G1 X99.967 Y96.359 E0.01037 F600
G1 X100.141 Y96.260 E0.01037 F600
G1 X100.317 Y96.165 E0.01037 F600
G1 X100.494 Y96.073 E0.01037 F600
G1 X100.674 Y95.984 E0.01037 F600
G1 X100.855 Y95.900 E0.01037 F600
G1 X101.038 Y95.819 E0.01037 F600
G1 X101.222 Y95.741 E0.01037 F600
G1 X101.408 Y95.667 E0.01037 F600
G1 X101.596 Y95.597 E0.01037 F600
G1 X101.784 Y95.531 E0.01037 F600
G1 X101.974 Y95.469 E0.01037 F600
G1 X102.166 Y95.410 E0.01037 F600
G1 X102.310 Y95.369 E0.00778 F600
G1 X102.454 Y95.330 E0.00778 F600
G1 X102.648 Y95.281 E0.01037 F600
G1 X102.843 Y95.235 E0.01037 F600
G1 X103.039 Y95.194 E0.01037 F600
G1 X103.235 Y95.157 E0.01037 F600
G1 X103.433 Y95.124 E0.01037 F600
G1 X103.630 Y95.094 E0.01037 F600
G1 X103.829 Y95.069 E0.01037 F600
G1 X104.028 Y95.048 E0.01037 F600
G1 X104.227 Y95.030 E0.01037 F600
G1 X104.426 Y95.017 E0.01037 F600
G1 X104.626 Y95.007 E0.01037 F600
G1 X104.826 Y95.002 E0.01037 F600
G1 X105.026 Y95.000 E0.01037 F600
G1 X105.226 Y95.003 E0.01037 F600
G1 X105.426 Y95.009 E0.01037 F600
G1 X105.626 Y95.020 E0.01037 F600
G1 X105.775 Y95.030 E0.00778 F600
G1 X105.925 Y95.043 E0.00778 F600
G1 X106.124 Y95.063 E0.01037 F600
G1 X106.322 Y95.088 E0.01037 F600
G1 X106.520 Y95.116 E0.01037 F600
G1 X106.718 Y95.149 E0.01037 F600
G1 X106.914 Y95.185 E0.01037 F600
G1 X107.110 Y95.225 E0.01037 F600
G1 X107.305 Y95.269 E0.01037 F600
G1 X107.499 Y95.317 E0.01037 F600
G1 X107.692 Y95.369 E0.01037 F600
G1 X107.884 Y95.425 E0.01037 F600
G1 X108.075 Y95.485 E0.01037 F600
G1 X108.265 Y95.548 E0.01037 F600
G1 X108.407 Y95.598 E0.00778 F600
G1 X108.547 Y95.650 E0.00778 F600
G1 X108.733 Y95.723 E0.01037 F600
G1 X108.918 Y95.800 E0.01037 F600
G1 X109.101 Y95.880 E0.01037 F600
G1 X109.283 Y95.964 E0.01037 F600
G1 X109.463 Y96.051 E0.01037 F600
G1 X109.641 Y96.142 E0.01037 F600
G1 X109.773 Y96.213 E0.00778 F600
G1 X109.904 Y96.285 E0.00778 F600
G1 X110.078 Y96.385 E0.01037 F600
G1 X110.249 Y96.489 E0.01037 F600
G1 X110.418 Y96.595 E0.01037 F600
G1 X110.585 Y96.705 E0.01037 F600
G1 X110.750 Y96.819 E0.01037 F600
G1 X110.912 Y96.935 E0.01037 F600
G1 X111.073 Y97.055 E0.01037 F600
G1 X111.191 Y97.147 E0.00778 F600
G1 X111.308 Y97.241 E0.00778 F600
G1 X111.462 Y97.369 E0.01037 F600
G1 X111.613 Y97.499 E0.01037 F600
G1 X111.762 Y97.633 E0.01037 F600
G1 X111.908 Y97.770 E0.01037 F600
G1 X112.051 Y97.909 E0.01037 F600
G1 X112.192 Y98.052 E0.01037 F600
G1 X112.329 Y98.197 E0.01037 F600
G1 X112.464 Y98.345 E0.01037 F600
G1 X112.595 Y98.496 E0.01037 F600
G1 X112.724 Y98.649 E0.01037 F600
G1 X112.849 Y98.804 E0.01037 F600
G1 X112.972 Y98.963 E0.01037 F600
G1 X113.091 Y99.123 E0.01037 F600
G1 X113.207 Y99.286 E0.01037 F600
G1 X113.319 Y99.452 E0.01037 F600
G1 X113.429 Y99.619 E0.01037 F600
G1 X113.535 Y99.789 E0.01037 F600
G1 X113.637 Y99.960 E0.01037 F600
G1 X113.736 Y100.134 E0.01037 F600
G1 X113.832 Y100.310 E0.01037 F600
G1 X113.924 Y100.487 E0.01037 F600
G1 X114.012 Y100.667 E0.01037 F600
G1 X114.097 Y100.848 E0.01037 F600
G1 X114.178 Y101.031 E0.01037 F600
G1 X114.256 Y101.215 E0.01037 F600
G1 X114.330 Y101.401 E0.01037 F600
G1 X114.400 Y101.588 E0.01037 F600
G1 X114.466 Y101.777 E0.01037 F600
G1 X114.529 Y101.967 E0.01037 F600
G1 X114.573 Y102.110 E0.00778 F600
G1 X114.602 Y102.206 E0.00518 F600
G1 X114.642 Y102.350 E0.00778 F600
G1 X114.693 Y102.544 E0.01037 F600
G1 X114.741 Y102.738 E0.01037 F600
G1 X114.784 Y102.933 E0.01037 F600
G1 X114.823 Y103.129 E0.01037 F600
G1 X114.859 Y103.326 E0.01037 F600
G1 X114.890 Y103.524 E0.01037 F600
G1 X114.918 Y103.722 E0.01037 F600
G1 X114.941 Y103.920 E0.01037 F600
G1 X114.961 Y104.119 E0.01037 F600
G1 X114.977 Y104.319 E0.01037 F600
G1 X114.988 Y104.518 E0.01037 F600
G1 X114.996 Y104.718 E0.01037 F600
G1 X114.999 Y104.868 E0.00778 F600
G1 X115.000 Y105.014 E0.00754 F600
G1 X97.500 Y111.614 F1200
G1 Y98.400 E0.68501 F600
G1 X99.000 Y112.950 F1200
G1 Y97.000 E0.82682 F600
G1 X100.500 Y113.930 F1200
G1 Y96.070 E0.92586 F600
G1 X102.000 Y114.539 F1200
G1 Y95.461 E0.98901 F600
G1 X103.500 Y114.887 F1200
G1 Y95.150 E1.02313 F600
G1 X105.000 Y114.950 F1200
G1 Y95.050 E1.03158 F600
G1 X106.500 Y114.887 F1200
G1 Y95.150 E1.02313 F600
G1 X108.000 Y114.539 F1200
G1 Y95.461 E0.98901 F600
G1 X109.500 Y113.930 F1200
G1 Y96.070 E0.92586 F600
G1 X111.000 Y112.950 F1200
G1 Y97.000 E0.82682 F600
G1 X112.500 Y111.614 F1200
G1 Y98.400 E0.68501 F600
G1 X114.000 Y109.309 F1200
G1 Y100.650 E0.44886 F600
; END Gcode
M204 S1000
M107
;TYPE:Custom
; Filament-specific end gcode
G1 Z180 F720 ; Move print head further up
G1 X0 Y200 F3600 ; park
G4 ; wait
M221 S100 ; reset flow
M900 K0 ; reset LA
M104 S0 ; turn off temperature
M140 S0 ; turn off heatbed
M107 ; turn off fan
M84 ; disable motors
M73 P100 R0 ; print progress done
M73 Q100 S0 ; print progress done