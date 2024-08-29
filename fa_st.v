module fa_st(a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;
wire w1,w2,w3;
ha_st ha1(a,b,w1,w2);
ha_st ha2(w1,cin,sum,w3);
or or1(cout,w2,w3);
endmodule
