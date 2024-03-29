bridge(R):-
    R =[A1,A2,A3,A4,A5,A6,P1,P2,UE,S1,S2,S3,S4,S5,S6,B1,B2,B3,B4,B5,B6,AB1,AB2,AB3,AB4,AB5,AB6,M1,M2,M3,M4,M5,M6,L,T1,T2,T3,T4,T5,UA,V1,V2,Send],
    R in 0..271,

    P1 #>= A3 + 2,
    P2 #>= A4 + 2,
    S1 #>= A1 + 4,
    S2 #>= A2 + 2,
    S3 #>= P1 + 20,
    S4 #>= P2 + 13,
    S5 #>= A5 + 2,
    S6 #>= A6 + 5,
    B1 #>= S1 + 8,
    B2 #>= S2 + 4,
    B3 #>= S3 + 4,
    B4 #>= S4 + 4,
    B5 #>= S5 + 4,
    B6 #>= S6 + 10,
    AB1 #>= B1 + 1,
    AB2 #>= B2 + 1,
    AB3 #>= B3 + 1,
    AB4 #>= B4 + 1,
    AB5 #>= B5 + 1,
    AB6 #>= B6 + 1,
    M1 #>= AB1 + 1,
    M2 #>= AB2 + 1,
    M3 #>= AB3 + 1,
    M4 #>= AB4 + 1,
    M5 #>= AB5 + 1,
    M6 #>= AB6 + 1,
    T1 #>= M1 + 16, T1 #>= M2 + 8, T1 #>= L + 2,
    T2 #>= M2 + 8, T2 #>= M3 + 8, T2 #>= L + 2,
    T3 #>= M3 + 8, T3 #>= M4 + 8, T3 #>= L + 2,
    T4 #>= M4 + 8, T4 #>= M5 + 8, T4 #>= L + 2,
    T5 #>= M5 + 8, T5 #>= M6 + 20, T5 #>= L + 2,
    V1 #>= T1 + 12,
    V2 #>= T5 + 12,
    Send #>= T2 + 12, Send #>= T3 + 12, Send #>= T4 + 12, Send #>= V1 + 15, Send #>= V2 + 10, Send #>= UA + 10,

    S1 + 8 + 4 #>= B1 + 1,
    S2 + 4 + 4 #>= B2 + 1,
    S3 + 4 + 4 #>= B3 + 1,
    S4 + 4 + 4 #>= B4 + 1,
    S5 + 4 + 4 #>= B5 + 1,
    S6 + 10 + 4 #>= B6 + 1,
    A1 + 4 + 3 #>= S1,
    A2 + 2 + 3 #>= S2,
    P1 + 20 + 3 #>= S3,
    P2 + 13 + 3 #>= S4,
    A5 + 2 + 3 #>= S5,
    A6 + 5 + 3 #>= S6,
    S1 #>= UE + 6,
    S2 #>= UE + 6,
    S3 #>= UE + 6,
    S4 #>= UE + 6,
    S5 #>= UE + 6,
    S6 #>= UE + 6,
    UA #>= M1 + 16 - 2,
    UA #>= M2 + 8 - 2,
    UA #>= M3 + 8 - 2,
    UA #>= M4 + 8 - 2,
    UA #>= M5 + 8 - 2,
    UA #>= M6 + 20 - 2,
    L #= 30,

    A2 #>= A1 + 4,
    A3 #>= A2 + 2,
    A4 #>= A3 + 2,
    A5 #>= A4 + 2,
    A6 #>= A5 + 2,
    P2 #> P1 + 20,
    S2 #>= S1 + 8,
    S3 #>= S2 + 4,
    S4 #>= S3 + 4,
    S5 #>= S4 + 4,
    S6 #>= S5 + 4,
    B2 #>= B1 + 1,
    B3 #>= B2 + 1,
    B4 #>= B3 + 1,
    B5 #>= B4 + 1,
    B6 #>= B5 + 1,
    M2 #>= M1 + 16,
    M3 #>= M2 + 8,
    M4 #>= M3 + 8,
    M5 #>= M4 + 8,
    M6 #>= M5 + 8,
    T1 #>= L + 2,
    T2 #>= T1 + 12,
    T3 #>= T2 + 12,
    T4 #>= T3 + 12,
    T5 #>= T4 + 12,
    V2 #>= V1 + 15,
    minof(labeling(R),Send).
