module hs(a,b,d,bo);
input a,b;
output d,bo;
xor g1(d,a,b);
and g2(bo,~a,b);
endmodule
