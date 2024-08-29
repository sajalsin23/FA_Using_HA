module fa_st_test;
reg a,b,cin;
wire cout,sum;
integer i;
fa_st fa_st1(a,b,cin,sum,cout);
initial
begin
{a,b,cin}=3'b000;
$monitor($time,"A=%b,B=%b,Cin=%b,Sum=%b,Cout=%b",a,b,cin,sum,cout);
for(i=0;i<8;i=i+1)
begin
{a,b,cin}=i;
#10;
end
#10;
$finish;
end
endmodule
