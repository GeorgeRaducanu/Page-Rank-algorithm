Copyright Raducanu George-Cristian 311CA 2021-2022
Topic1 MN
iteration
This subpoint was resolved as follows:
We performed the readings using the predefined reading functions in Octave,
I transformed the adjacency list into an adjacency matrix, also memorizing the number of edges corresponding to a node.
If that node has a reference to itself, we will make it 0 in the adjacency matrix and decrement the L.
Next, we built the matrix M described in the source [1] and by applying the iterative algorithm also from [1], until
we reach the desired precision, the R is obtained and the task is solved.

Algebraic
Data reading and processing is identical to the previous subsection.
Going to the limit of the recurrence relation (t+1 = t, that means t tends to infinity - large number of iterations) results in R = dMR + (1-d)/N * 1 and removing R from the respective relation results
R in algebraic form using the inverse.

PR_Inv
To calculate the inverse of a matrix relatively efficiently, we first decompose the given matrix QR using the modified GM algorithm presented in the laboratory.
In the following we have QRT = I where T is the inverse of A. The orthogonal Q results in RT = Qt. Next, we interpret each column in T as an unknown and
we will obtain in systems of linear equations and since R is superior triangular for their efficient solution we will use SST which was also presented at
laboratory. Putting together the solutions at the end (that is, the ones in the columns), the result is T, that is, inv(A)

membership
The function u(x) must be continuous, so a = 1/(val2 - val1), b = -val1*a;
Next, if x < val 1, y = 0, if x >=val1 && x <= val2 y = ax+b and otherwise y = 1.

PageRank
This program is the "final result" and combines all the algorithms so far. We do the reading one more time just to get n, val1 and val2.
We call Iterative and Algebraic and then we will sort R2 Algebraic together with an auxiliary vector of indices. For display we display i, v(i) where v is the auxiliary vector
which was "sorted" but also the Membership (R2(i), val1, val2) for each i from 1 to N and thus the program ends.
