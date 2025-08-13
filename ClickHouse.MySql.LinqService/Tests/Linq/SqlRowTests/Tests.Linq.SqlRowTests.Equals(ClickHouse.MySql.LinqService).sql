BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	i.Two = i.One * 2 AND i.Three = i.Four - 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	i.Four = i.Three

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	i.Nil = i.Two

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	1 = i.One AND i.Nil = i.Nil AND 3 = i.Three

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	1 = i.One AND NULL >= i.Nil AND 3 = i.Three

