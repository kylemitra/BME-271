syms R1 R2 L C Vi V0 V1 D

eqn1 = V1*(-1/R1-1/(L*D)-C*D)+V0*(C*D) == -Vi/R1;
eqn2 = V1*C*D + V0*(-C*D-1/R2);

eqns = [eqn1; eqn2];

s = solve(eqns);
s.V0