# Assignment 1
# The commands are listed with the question #
# Answer choice is listed below the command

#################
# 1
#################
data <- read.csv("hw1_data.csv")
data
# Choice is #4 
# Ozone, Solar.R, Wind, Temp, Month, Day


#################
# 2
#################
data[1:2, ]
# Choice is #3 
#     Ozone Solar.R Wind Temp Month Day
# 1      41     190  7.4   67     5   1
# 2      36     118  8.0   72     5   2


#################
# 3
#################
dim(data)
# Choice is #2 
# 153


#################
# 4
#################
data[152:153, ]
# Choice is #2
#     Ozone Solar.R Wind Temp Month Day
# 152    18     131  8.0   76     9  29
# 153    20     223 11.5   68     9  30


#################
# 5
#################
data[47, 1]
# [1] 21 
# OR 
data$O[47]
# [1] 21

# Choice is #3
# 21



#################
# 6
#################

good <- complete.cases(data[1:153,1])  # 1 in column indicates Ozone
data[good, ][1:153, 1]

# [1]  41  36  12  18  28  23  19   8   7  16  11  14  18  14  34   6  30  11   1  11
# [21]   4  32  23  45 115  37  29  71  39  23  21  37  20  12  13 135  49  32  64  40
# [41]  77  97  97  85  10  27   7  48  35  61  79  63  16  80 108  20  52  82  50  64
# [61]  59  39   9  16  78  35  66 122  89 110  44  28  65  22  59  23  31  44  21   9
# [81]  45 168  73  76 118  84  85  96  78  73  91  47  32  20  23  21  24  44  21  28
# [101]   9  13  46  18  13  24  16  13  23  36   7  14  30  14  18  20  NA  NA  NA  NA
# [121]  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA
# [141]  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA

# Method 2
#> data[is.na(data$O),1]
#[1] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA
#[28] NA NA NA NA NA NA NA NA NA NA
#> length(data[is.na(data$O),1])
#[1] 37


# I also manually counted the NAs and got 37
# Don't know if there is a better way to do this

# Choice is #2
# 37


#################
# 7
#################

#> allO <- data[good, ][1:153, 1]
#> allO
#[1]  41  36  12  18  28  23  19   8   7  16  11  14  18  14  34   6  30  11   1  11
#[21]   4  32  23  45 115  37  29  71  39  23  21  37  20  12  13 135  49  32  64  40
#[41]  77  97  97  85  10  27   7  48  35  61  79  63  16  80 108  20  52  82  50  64
#[61]  59  39   9  16  78  35  66 122  89 110  44  28  65  22  59  23  31  44  21   9
#[81]  45 168  73  76 118  84  85  96  78  73  91  47  32  20  23  21  24  44  21  28
#[101]   9  13  46  18  13  24  16  13  23  36   7  14  30  14  18  20  NA  NA  NA  NA
#[121]  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA
#[141]  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA  NA
#> goodO <- complete.cases(allO)
#> goodO
#[1]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
#[14]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
#[27]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
#[40]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
#[53]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
#[66]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
#[79]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
#[92]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
#[105]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE FALSE
#[118] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
#[131] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
#[144] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
#> allO[goodO]
#[1]  41  36  12  18  28  23  19   8   7  16  11  14  18  14  34   6  30  11   1  11
#[21]   4  32  23  45 115  37  29  71  39  23  21  37  20  12  13 135  49  32  64  40
#[41]  77  97  97  85  10  27   7  48  35  61  79  63  16  80 108  20  52  82  50  64
#[61]  59  39   9  16  78  35  66 122  89 110  44  28  65  22  59  23  31  44  21   9
#[81]  45 168  73  76 118  84  85  96  78  73  91  47  32  20  23  21  24  44  21  28
#[101]   9  13  46  18  13  24  16  13  23  36   7  14  30  14  18  20

#> mean(allO[goodO])
#[1] 42.12931

#Method 2

#> mean(data[!is.na(data$O),1])
#[1] 42.12931


# I calculated the mean in Excel (without NAs) and got 42.2931
# Don't know if there is a better way to do this

# Choice is #1
# 42.1


#################
# 8
#################

> O31data <- data[data$Ozone > 31, ]
> O31data[!is.na(O31data$O), ]
Ozone Solar.R Wind Temp Month Day
1      41     190  7.4   67     5   1
2      36     118  8.0   72     5   2
17     34     307 12.0   66     5  17
24     32      92 12.0   61     5  24
29     45     252 14.9   81     5  29
30    115     223  5.7   79     5  30
31     37     279  7.4   76     5  31
40     71     291 13.8   90     6   9
41     39     323 11.5   87     6  10
48     37     284 20.7   72     6  17
62    135     269  4.1   84     7   1
63     49     248  9.2   85     7   2
64     32     236  9.2   81     7   3
66     64     175  4.6   83     7   5
67     40     314 10.9   83     7   6
68     77     276  5.1   88     7   7
69     97     267  6.3   92     7   8
70     97     272  5.7   92     7   9
71     85     175  7.4   89     7  10
77     48     260  6.9   81     7  16
78     35     274 10.3   82     7  17
79     61     285  6.3   84     7  18
80     79     187  5.1   87     7  19
81     63     220 11.5   85     7  20
85     80     294  8.6   86     7  24
86    108     223  8.0   85     7  25
88     52      82 12.0   86     7  27
89     82     213  7.4   88     7  28
90     50     275  7.4   86     7  29
91     64     253  7.4   83     7  30
92     59     254  9.2   81     7  31
93     39      83  6.9   81     8   1
96     78      NA  6.9   86     8   4
97     35      NA  7.4   85     8   5
98     66      NA  4.6   87     8   6
99    122     255  4.0   89     8   7
100    89     229 10.3   90     8   8
101   110     207  8.0   90     8   9
104    44     192 11.5   86     8  12
106    65     157  9.7   80     8  14
109    59      51  6.3   79     8  17
112    44     190 10.3   78     8  20
116    45     212  9.7   79     8  24
117   168     238  3.4   81     8  25
118    73     215  8.0   86     8  26
120    76     203  9.7   97     8  28
121   118     225  2.3   94     8  29
122    84     237  6.3   96     8  30
123    85     188  6.3   94     8  31
124    96     167  6.9   91     9   1
125    78     197  5.1   92     9   2
126    73     183  2.8   93     9   3
127    91     189  4.6   93     9   4
128    47      95  7.4   87     9   5
129    32      92 15.5   84     9   6
134    44     236 14.9   81     9  11
139    46     237  6.9   78     9  16
146    36     139 10.3   81     9  23
> dim(O31data[!is.na(O31data$O), ])
[1] 58  6
> goodO31data <- O31data[!is.na(O31data$O), ]
> goodO31data[goodO31data$Temp > 90, ]
Ozone Solar.R Wind Temp Month Day
69     97     267  6.3   92     7   8
70     97     272  5.7   92     7   9
120    76     203  9.7   97     8  28
121   118     225  2.3   94     8  29
122    84     237  6.3   96     8  30
123    85     188  6.3   94     8  31
124    96     167  6.9   91     9   1
125    78     197  5.1   92     9   2
126    73     183  2.8   93     9   3
127    91     189  4.6   93     9   4
> goodO31_T90data <- goodO31data[goodO31data$Temp > 90, ]
> goodO31_T90data 
Ozone Solar.R Wind Temp Month Day
69     97     267  6.3   92     7   8
70     97     272  5.7   92     7   9
120    76     203  9.7   97     8  28
121   118     225  2.3   94     8  29
122    84     237  6.3   96     8  30
123    85     188  6.3   94     8  31
124    96     167  6.9   91     9   1
125    78     197  5.1   92     9   2
126    73     183  2.8   93     9   3
127    91     189  4.6   93     9   4
> mean(goodO31_T90data[, "Solar.R"])
[1] 212.8


# I calculated the mean in Excel (without NAs) and got 212.8
# Don't know if there is a better way to do this

# Choice is #4
# 212.8


#################
# 9
#################

> attributes(data)
$names
[1] "Ozone"   "Solar.R" "Wind"    "Temp"    "Month"   "Day"    

$class
[1] "data.frame"

$row.names
[1]   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18  19  20
[21]  21  22  23  24  25  26  27  28  29  30  31  32  33  34  35  36  37  38  39  40
[41]  41  42  43  44  45  46  47  48  49  50  51  52  53  54  55  56  57  58  59  60
[61]  61  62  63  64  65  66  67  68  69  70  71  72  73  74  75  76  77  78  79  80
[81]  81  82  83  84  85  86  87  88  89  90  91  92  93  94  95  96  97  98  99 100
[101] 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120
[121] 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140
[141] 141 142 143 144 145 146 147 148 149 150 151 152 153

> class(data)
[1] "data.frame"
> class(data[,"Month"])
[1] "integer"

# Choice is #4
# integer


#################
# 10
#################

> data[data$Month == 6,]
   Ozone Solar.R Wind Temp Month Day
32    NA     286  8.6   78     6   1
33    NA     287  9.7   74     6   2
34    NA     242 16.1   67     6   3
35    NA     186  9.2   84     6   4
36    NA     220  8.6   85     6   5
37    NA     264 14.3   79     6   6
38    29     127  9.7   82     6   7
39    NA     273  6.9   87     6   8
40    71     291 13.8   90     6   9
41    39     323 11.5   87     6  10
42    NA     259 10.9   93     6  11
43    NA     250  9.2   92     6  12
44    23     148  8.0   82     6  13
45    NA     332 13.8   80     6  14
46    NA     322 11.5   79     6  15
47    21     191 14.9   77     6  16
48    37     284 20.7   72     6  17
49    20      37  9.2   65     6  18
50    12     120 11.5   73     6  19
51    13     137 10.3   76     6  20
52    NA     150  6.3   77     6  21
53    NA      59  1.7   76     6  22
54    NA      91  4.6   76     6  23
55    NA     250  6.3   76     6  24
56    NA     135  8.0   75     6  25
57    NA     127  8.0   78     6  26
58    NA      47 10.3   73     6  27
59    NA      98 11.5   80     6  28
60    NA      31 14.9   77     6  29
61    NA     138  8.0   83     6  30
> M6data <- data[data$Month == 6,]
> mean(M6data[, "Temp"])
[1] 79.1

# Choice is #4
# 79.1
