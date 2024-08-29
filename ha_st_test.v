module ha_st_test;
reg a,b;
wire s,cout;
integer i;
ha_st ha1(a,b,s,cout);
initial
begin
a=1'b0;
b=1'b0;
$monitor($time,"A=%b ,B=%b ,Sum=%b ,Carry=%b",a,b,s,cout);
for(i=0;i<4;i=i+1)//insert a 10 second delay automatically
begin
{a,b}=i;
#10;
end
#10;
$finish;
end
endmodule
