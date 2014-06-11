﻿var paper = Raphael(20, 20, 1500, 1000);

var phrase = paper.text(640, 350, 'Develop experiences')
    .attr({
        'font-family': 'consolas',
        'font-size': 50,
        'fill-opacity': 0,
        'stroke': 'none',
    });


var telerikLogo = paper.path("m 150.0846,309.58721 c -28.7375,-28.82832 -52.250001,-52.86767 -52.250001,-53.42078 0,-0.55312 16.875001,-17.88066 37.500001,-38.50566 20.625,-20.625 37.5,-37.94109 37.5,-38.48019 0,-2.01012 -43.94581,-45.01319 -46,-45.01319 -1.31667,0 -9.77276,7.75141 -24,22 -12.081874,12.1 -22.424458,22 -22.983522,22 -0.559063,0 -1.016479,-0.45 -1.016479,-1 0,-0.55 -0.575658,-1 -1.279241,-1 -0.703582,0 -1.941082,-0.96985 -2.75,-2.15522 -0.808917,-1.18537 -2.820759,-3.42472 -4.470759,-4.97633 -1.65,-1.55161 -3.45,-3.3017 -4,-3.8891 -0.55,-0.58739 -2.35,-2.38739 -4,-4 -1.65,-1.6126 -3.45,-3.44679 -4,-4.07598 -0.55,-0.62918 -2.415893,-2.51777 -4.14643,-4.19686 l -3.14643,-3.05289 37.860992,-37.86556 37.860989,-37.86556 37.53875,37.53875 c 20.64632,20.64631 38.08601,37.53875 38.75488,37.53875 0.66886,0 18.14867,-16.91092 38.84401,-37.57983 l 37.62789,-37.579819 38.04808,37.692899 38.04807,37.6929 -14.38692,14.38692 c -7.91281,7.91281 -14.84816,14.38693 -15.41188,14.38693 -0.56373,0 -10.91013,-9.9 -22.992,-22 -12.08187,-12.1 -22.42693,-22 -22.98902,-22 -1.33118,0 -46.01098,44.67344 -46.01098,46.00444 0,0.55848 16.65,17.65649 37,37.99556 20.35,20.33907 37,37.43567 37,37.99244 0,0.88217 -104.58606,106.14137 -105.24763,105.92503 -0.1388,-0.0454 -23.76487,-23.66933 -52.50237,-52.49765 z m 55.75,-10.41982 c 1.54133,-1.65 3.13159,-3 3.53391,-3 0.7681,0 2.95941,-2.3807 5.43685,-5.90673 0.80892,-1.1513 1.88113,-2.09327 2.3827,-2.09327 0.93046,0 2.98531,-2.16072 5.6173,-5.90673 0.80892,-1.1513 1.87466,-2.09327 2.36831,-2.09327 1.02208,0 6.62064,-6.10833 6.64496,-7.25 0.009,-0.4125 0.51921,-0.75 1.13428,-0.75 1.18237,0 6.83851,-5.97273 6.86572,-7.25 0.009,-0.4125 0.57847,-0.75408 1.26597,-0.75907 0.6875,-0.005 2.375,-1.43418 3.75,-3.17598 1.375,-1.7418 3.07981,-3.74788 3.78846,-4.45796 1.05192,-1.05403 -2.84834,-5.42786 -21.2445,-23.82402 -12.39314,-12.39313 -22.98792,-22.53297 -23.54396,-22.53297 -1.32094,0 -46,44.67894 -46,45.99988 0,0.8425 43.78291,45.66989 44.84879,45.9187 0.19183,0.0448 1.60988,-1.26858 3.15121,-2.91858 z").attr({
    'fill': 'yellowgreen',
    'stroke': 'none',
    'opacity':0
}).scale(0.5).animate({
    'opacity':1,
}, 2000,'', phrase.animate({
    'fill-opacity':1
    },4000));

var telerikText = paper.text(620, 240, 'Telerik').attr({
    'font-size': 170,
    'font-weight': 'bold',
});

var tradeMark = paper.text(940, 180, '®').attr({
    'font-size': 35,
    'font-weight': 'bold'
});


var partYou = paper.path("m 443.98703,286.27276 c -37.9461,-0.0223 -95.29493,-1.68531 -102.29307,-2.96639 -2.96885,-0.54347 -9.22291,-2.88974 -13.89791,-5.21391 -15.20119,-7.55728 -26.52113,-21.52487 -30.46058,-37.5851 -5.00363,-20.39865 -5.3379,-150.742323 -0.45064,-175.717182 0.53814,-2.75 2.96067,-9.085042 5.38339,-14.07787 3.49744,-7.207649 5.74354,-10.330056 10.90234,-15.155857 7.32826,-6.855235 19.5764,-13.52245 27.83131,-15.149841 6.33598,-1.249088 60.93513,-3.116432 91.12114,-3.116432 40.497,-2.292246 84.37411,0.176554 124.28706,0 30.4511,0 84.83768,1.869159 91.38598,3.140756 9.32934,1.811638 21.99676,9.052563 29.20588,16.694604 6.86831,7.280775 13.11293,18.649218 14.74481,26.843201 1.15304,5.789671 3.05592,37.942911 3.05206,51.571441 1.60427,33.24834 1.52282,58.71307 0.34944,84.41421 -0.36967,11.1375 -0.38963,18.35394 -2.32281,30.33579 -1.74828,10.83585 -2.25169,11.34672 -5.95381,21.60479 -0.37902,1.05022 -6.2514,11.26583 -11.5106,16.18555 -7.39875,6.92117 -19.99435,13.65557 -28.46288,15.21805 -6.97614,1.28713 -64.23236,2.95187 -102.29307,2.97419 -33.86302,2.35388 -68.45823,0.30158 -100.61804,0 z m 197.39218,-46.09958 c 15.5829,-5.83031 23.00528,-20.15939 22.21315,-42.883 l -0.29631,-8.5 -12.60925,-0.27883 -12.60924,-0.27882 -0.49885,11.30406 c -0.51387,11.64465 -2.05058,16.87495 -5.32746,18.13241 -2.95176,1.1327 -8.97803,0.64371 -11.19383,-0.9083 -3.34899,-2.34573 -4.24972,-7.57389 -4.25579,-24.70209 l -0.006,-15.73157 23.25,-0.26843 23.25,-0.26843 -0.0226,-24 -3.0226,-29.5 -0.41555,-1.83705 c -3.2019,-14.15487 -15.79032,-19.24263 -30.86644,-19.43484 -9.76804,-0.12454 -16.33665,1.81834 -23.18023,6.8563 -6.7552,4.97289 -10.37006,9.90905 -13.30627,18.16994 -1.87629,5.27884 -2.07542,8.65173 -2.45096,41.51466 -0.43589,38.14435 0.19075,45.56041 4.7481,56.19229 3.68444,8.59545 13.85103,16.323 24.42368,18.56427 5.78453,1.22625 15.7439,0.26401 22.17607,-2.14257 z m -24.58316,-95.38014 c 0,-13.37664 2.55674,-17.50286 10.84536,-17.50286 5.70767,0 8.76934,3.87658 9.65871,12.22953 0.3672,3.44876 0.5165,7.84547 0.33178,9.77047 l -0.33585,3.5 -10.25,0.28498 -10.25,0.28499 z m -183.8004,94.60049 c 6.61951,-2.27744 12.23758,-5.74676 16.3004,-10.06595 l 3,-3.1893 0.5,6.32595 0.5,6.32595 12.5,0 12.5,0 0.25704,-67.25 0.25704,-67.25 -13.00704,0 -13.00704,0 0,50.39641 0,50.39641 -3.67727,3.22868 c -2.0225,1.77578 -5.21511,3.87124 -7.09468,4.65657 -3.01241,1.25867 -3.70141,1.24179 -5.81397,-0.14241 l -2.39657,-1.57029 -0.25876,-53.23269 -0.25875,-53.23268 -12.75,-0.27988 -12.75,-0.27988 0,60.35174 c 0,65.38932 0.0944,66.62976 5.45609,71.66677 2.52678,2.37379 8.72502,4.92581 12.13736,4.99736 1.1514,0.0241 4.57416,-0.8096 7.60615,-1.85276 z m 129.60377,-2.35447 c 2.28641,-1.51311 5.04127,-4.48419 6.1219,-6.6024 3.80476,-7.45794 4.25636,-14.73186 3.8352,-61.77279 -0.46102,-51.49171 -0.58078,-52.35799 -8.27158,-59.8326 -9.52887,-9.260997 -23.94077,-8.19713 -34.73889,2.56439 l -2.75,2.74067 0,-28.452952 0,-28.452954 -12.75,0.279877 -12.75,0.279877 0,90.500002 0,90.5 12.75,0.27988 12.75,0.27987 0,-4.58634 0,-4.58634 3.81339,3.20154 c 6.14076,5.15548 11.56326,6.93696 20.25973,6.65603 6.34588,-0.205 8.2468,-0.69047 11.73025,-2.99576 z m -28.18407,-18.7833 c -1.58438,-0.47439 -3.94688,-1.86415 -5.25,-3.08836 l -2.3693,-2.22585 0,-40.84038 0,-40.84039 3.25,-2.00731 c 4.82606,-2.98074 11.38858,-2.35033 14.14938,1.35922 2.03964,2.74058 2.10683,3.94143 2.31443,41.36873 0.23326,42.05231 -0.0246,44.33583 -5.23054,46.31512 -2.9672,1.12813 -2.95981,1.12817 -6.86397,-0.0408 z m -153.86305,-55.71558 0.25624,-76.250002 13.99376,0 13.99375,0 0,-14.510736 0,-14.510737 -42.75,0.260737 -42.75,0.260736 -0.27746,14.25 -0.27745,14.25 14.52745,0 14.52746,0 0,76.527462 0,76.52745 14.25,-0.27745 14.25,-0.27746 z")
            .attr({
                fill: '#eb2727',
                'stroke':'none'
            })
        .scale(0.7, 0.7)
        .translate(0, 700);

var partTube = paper.path("m 129.95518,239.43419 c -5.94635,-2.1134 -14.13923,-9.36174 -17.14524,-15.16861 -3.6835,-7.11562 -4.14941,-13.93248 -3.82571,-55.9754 0.30881,-40.10946 0.33461,-40.5504 2.67509,-45.72705 2.7797,-6.14809 9.29924,-12.50519 15.91703,-15.52042 3.97269,-1.81005 6.61901,-2.15602 16.7197,-2.18585 13.91594,-0.0411 18.54327,1.47659 25.39631,8.32963 9.63589,9.63589 10.34699,14.21154 9.89763,63.68741 -0.34037,37.47554 -0.43595,39.12284 -2.5817,44.49563 -3.0306,7.58841 -8.14152,13.24937 -14.98799,16.60103 -4.98425,2.44002 -7.08163,2.83845 -16.22425,3.08205 -8.29577,0.22105 -11.62119,-0.11871 -15.84087,-1.61842 z m 19.69584,-21.56901 c 5.02093,-2.59643 5.14503,-3.71 5.14503,-46.16751 l 0,-39.4984 -2.38827,-2.38827 c -3.03629,-3.03629 -8.68083,-4.14905 -12.66822,-2.49742 -6.05831,2.50943 -5.94351,1.63105 -5.94351,45.4766 0,35.17129 0.19593,40.33472 1.607,42.3493 2.87475,4.10429 9.23073,5.32021 14.24797,2.7257 z m 60.15039,20.73798 c -2.0945,-1.08661 -4.49841,-3.61591 -6,-6.31298 l -2.50536,-4.5 -0.27991,-60.25 -0.27991,-60.25 12.02991,0 12.02991,0 0,52.54545 0,52.54546 2.45455,2.45454 c 1.35,1.35 2.93945,2.45455 3.53211,2.45455 2.48614,0 8.74078,-3.32149 11.76334,-6.24685 l 3.25,-3.14548 0,-50.30384 0,-50.30383 12.5,0 12.5,0 0,65.5 0,65.5 -12.5,0 -12.5,0 0,-6.56867 0,-6.56868 -5.75,4.9544 c -7.70972,6.64295 -13.40173,9.35668 -20.72059,9.87879 -4.51337,0.32197 -6.9081,-0.0257 -9.52405,-1.38286 z m -159.005356,-34.93768 0,-34.6247 -3.465162,-11.1253 c -1.90584,-6.11891 -5.920578,-19.2253 -8.921642,-29.1253 -3.001063,-9.9 -7.939236,-26.1 -10.973718,-36.000002 -3.034482,-9.9 -6.274067,-20.7 -7.199079,-24 -0.925012,-3.3 -2.143202,-6.575256 -2.70709,-7.278347 -0.824805,-1.028419 1.77048,-1.223928 13.274539,-1 l 14.299789,0.278347 4.712895,18.5 c 2.592092,10.175 6.127448,24.350002 7.856347,31.500002 4.521931,18.70081 5.131998,20.66371 6.30113,20.274 1.000901,-0.33364 4.480525,-13.72336 13.77949,-53.024002 l 4.199846,-17.75 14.028316,0 c 12.202115,0 13.951615,0.199864 13.439165,1.535299 -0.79844,2.080698 -8.22668,25.91484 -15.104707,48.464703 -3.103518,10.175 -8.092962,26.375 -11.087654,36 l -5.444895,17.5 0.0062,37.25 0.0062,37.25 -13.5,0 -13.5,0 0,-34.6247 z")
    .attr({
        fill: '#4b4b4b',
        'stroke-width': '0'
    })
.scale(0.7, 0.7)
.translate(110, 700);

