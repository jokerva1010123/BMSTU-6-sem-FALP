# bmstu-falp

Получается лисп

# Защиты Lisp

## ЛР1

Устно, задачки по типу `(* * *)` и `,`, рекурсивный `setf`

## ЛР2

Устно, задачки про `funcall`

## ЛР3

Квадратное уравнение на `and/or`

## ЛР4

Аналог функции `zip` :  `(zip '((A A A) (B B B) (C C C))) -> ((A B C) (A B C) (A B C))`, нельзя использовать `mapcar`

## ЛР5

Написать свой `reverse`, реализовать свап двух элементов через рекурсию и задачка про мост и фонарик (посчитать оптимальное время)

## ЛР6-7

Привести матрицу к диагональному виду, в качестве типа матрицы использовать тип `array`. В задачке ещё реализована возможность проверки, а действительно ли матрица приводится к диагональному виду (результат `reduce` будет равен исходной матрице):
```lisp
(defvar MMM #2A(...))
(reduce #'mmul (list (eigen-m MMM) (diagonal MMM) (inv (eigen-m MMM))))
```
Но это не сработает, если есть кратные корни (там нереальное мета программирование по поиску ФСР начинается)

# Защиты Prolog

## ЛР1, ЛР2

Сопоставление SQL и PROLOG

## ЛР3

Найти решения подставляя базовые операторы +, -, *, div, mod: `(((5 ? 2) ? 3) ? 4) = 10`

## ЛР4

Тоже самое, что в 3, только через DCG

## ЛР5

Дерево решений для `max3clipping` и `max3`

## ЛР6

В битве двух персонажей определить, можно ли выиграть первому персонажу за X ходов

## ЛР7

Дана БЗ с функциями `fn(InList, OutList)`. Для произвольного списка аргументов найти такую функцию, чтобы подставив входящие аргументы получить выходящие. `match([1, 2, 3], [1, 2], R) -> R = [plus(1, 1), minus(3, 1)...]`

## ЛР8

Лабиринт

