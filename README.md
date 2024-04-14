## SIMULATION AND IMPLEMENTATION OF LOGIC GATES,ADDERS AND SUBTRACTORS

## AIM : 
To simulate and implement Logic Gates,Adders and Subtractor using VIVADO 2023.2.

## APPARATUS REQUIRED : 
VIVADO 2023.2

## PROCEDURE: 
STEP:1 Launch the Vivado 2023.2 software.

STEP:2 Click on “create project ” from the starting page of vivado.

STEP:3 Choose the design entry method:RTL(verilog/VHDL).

STEP:4 Crete design source and give name to it and click finish.

STEP:5 Write the verilog code and check the syntax.

STEP:6 Click “run simulation” in the navigator window and click “Run behavioral simulation”.

STEP:7 Verify the output in the simulation window.

## LOGIC GATES 
## LOGIC DIAGRAM :

![image](https://github.com/navaneethans/VLSI-LAB-EXPERIMENTS/assets/6987778/ee17970c-3ac9-4603-881b-88e2825f41a4)
## VERILOG CODE :
```
module Logicgates(a,b,andgate,orgate,xorgate,nandgate,norgate,xnorgate,notgate);
input a,b;
output andgate,orgate,xorgate,nandgate,xnorgate,norgate,notgate;
and(andgate,a,b);
or(orgate,a,b);
xor(xorgate,a,b);
nand(nandgate,a,b);
nor(norgate,a,b);
xnor(xnorgate,a,b);
not(notgate,a);
endmodule
```
## OUTPUT :
![image](https://github.com/SwarnaMallikaPL/VLSI-LAB-EXP-1/assets/160829667/74a4a0c5-38b5-4f75-957a-a34a3a689878)

## HALF ADDER 
## LOGIC DIAGRAM:
![image](https://github.com/navaneethans/VLSI-LAB-EXPERIMENTS/assets/6987778/0e1ecb96-0c25-4556-832b-aeeedfdfe7b9)

## VERILOG CODE :
```
module halfadder(a,b,sum,carry);
input a,b;
output sum,carry;
xor(sum,a,b);
and(carry,a,b);
endmodule
```
## OUTPUT :
![image](https://github.com/SwarnaMallikaPL/VLSI-LAB-EXP-1/assets/160829667/554d8528-bbe7-44a3-bf01-d2c3004b7b49)

## FULL ADDER 
## LOGIC DIAGRAM :
![image](https://github.com/navaneethans/VLSI-LAB-EXPERIMENTS/assets/6987778/9bb3964c-438f-469d-a3de-c1cca6f323fb)
## VERILOG CODE:
```
module fa(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
wire w1,w2,w3;
xor g1(w1,a,b);
and g2(w2,a,b);
xor g3(sum,w1,c);
and g4(w3,w1,c);
or g5(carry,w3,w2);
endmodule
```
## OUTPUT :
![image](https://github.com/SwarnaMallikaPL/VLSI-LAB-EXP-1/assets/160829667/9ab8bdb4-cfd8-4f75-9390-358c66a577f2)

## HALF SUBTRACTOR
## LOGIC DIAGRAM :
![image](https://github.com/navaneethans/VLSI-LAB-EXPERIMENTS/assets/6987778/731470b7-eb4e-49f8-8bb7-2994052a7184)

## VERILOG CODE :
```
module hs(a,b,d,bo);
input a,b;
output d,bo;
xor g1(d,a,b);
and g2(bo,~a,b);
endmodule

```
## OUTPUT :
![image](https://github.com/SwarnaMallikaPL/VLSI-LAB-EXP-1/assets/160829667/a93dd2d0-542a-432c-8908-67ceb6d8cbcf)

## FULL SUBTRACTOR 
## LOGIC DIAGRAM :
![image](https://github.com/navaneethans/VLSI-LAB-EXPERIMENTS/assets/6987778/d66f874b-c1f2-44b3-a035-7149b56430c1)
## VERILOG CODE :
```
module fs(a,b,bi,d,bo);
input a,b,bi;
output d,bo;
wire w1,w2,w3,w4,w5;
not g1(w1,a);
xor g2(w2,a,b);
and g3(w3,w1,b);
not g4(w4,w2);
xor g5(d,w2,bi);
and g6(w5,w4,bi);
or g7(bo,w5,w3);
endmodule
```
## OUTPUT :
![image](https://github.com/SwarnaMallikaPL/VLSI-LAB-EXP-1/assets/160829667/b409e79f-4e43-48d3-8ce9-d6832a1c77da)


## 8-BIT RIPPLE CARRY ADDER
## LOGIC DIAGRAM :
![image](https://github.com/navaneethans/VLSI-LAB-EXPERIMENTS/assets/6987778/7385a408-40a5-4203-8050-b72818622d79)

## VERILOG CODE:
```
 module rc(a,b,c,sum,cout) ;
 input a,b,c;
 output sum,cout;
 wire w1,w2,w3;
 xor g1(w1,a,b);
 xor g2(sum,w1,c);
 and g3(w2,a,b);
 and g4(w3,w1,c);
 or g5(cout,w3,w2);
 endmodule
 module rca8(a,b,cin,sum,cout);
 input [7:0]a,b;
 input cin;
 output [7:0]sum;
 output cout;
 wire w1,w2,w3,w4,w5,w6,w7;
 rc rc1(a[0],b[0],cin,sum[0],w1);
 rc rc2(a[1],b[1],w1,sum[1],w2);
 rc rc3(a[2],b[2],w2,sum[2],w3);
 rc rc4(a[3],b[3],w3,sum[3],w4);
 rc rc5(a[4],b[4],w4,sum[4],w5);
 rc rc6(a[5],b[5],w5,sum[5],w6);
 rc rc7(a[6],b[6],w6,sum[6],w7);
 rc rc8(a[7],b[7],w7,sum[7],cout);
 endmodule
```
## OUTPUT :
![image](https://github.com/SwarnaMallikaPL/VLSI-LAB-EXP-1/assets/160829667/19940af4-30c5-4a0e-b1c4-c416e14a9879)

## RESULT:
Thus the simulation and implementation of Logic Gates, Adders and Subtractors is done and outputs are verified. 


