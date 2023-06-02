domains
  num = integer.

predicates
  factorial(num, num).
  implFactorial(num, num, num).
  Fibonacci(num, num).
  implFibonacci(num, num, num, num).
  
  abc(num).

clauses
  implFactorial(0, Res, Res) :- !.
  implFactorial(Num, Res, Cur, ) :-
    CurRes  = Cur * Num,
    NextNum = Num - 1,
    Res <= CurRes,
    implFactorial(NextNum, CurRes, Res).

  factorial(Num, Res) :-
    implFactorial(Num, Res, 1, 1), !.

  implFibonacci(0, Prev1, _, Prev1) :- !.
  implFibonacci(1, _, Prev2, Prev2) :- !.
  implFibonacci(Num, Prev1, Prev2, Res) :- 
    NextNum = Num - 1,
    NextPrev2 = Prev1 + Prev2,
    implFibonacci(NextNum, Prev2, NextPrev2, Res).

  Fibonacci(Num, Res) :-
    Num >= 0,
    implFibonacci(Num, 0, 1, Res).
    
  abc(Num) :- Num >= 0.
    

goal
   factorial(Y, 120).
  % abc(Y).
  % factorial(0, Res).
  % factorial(1, Res).
  % factorial(5, Res).

  % Fibonacci(-1, Res).
  % Fibonacci( 0, Res).
  % Fibonacci( 1, Res).
  % Fibonacci( 2, Res).
  % Fibonacci( 3, Res).
  %Fibonacci( 7, Res).