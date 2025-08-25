BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	(i.One, i.Two) NOT BETWEEN (i.One, i.One * 2) AND (i.One, i.One + i.One)

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	(i.One, i.Three) NOT BETWEEN (i.One, i.One) AND (i.One, i.Four)

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	(i.One, i.Two) NOT BETWEEN (i.One, i.Three) AND (i.One, i.Two)

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	(i.Two, i.Five) NOT BETWEEN (i.One, i.One) AND (i.Three, i.Two)

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	(i.Two, i.Five) NOT BETWEEN (i.One, i.One) AND (i.Two, i.Two)

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	(i.Two, i.Nil) NOT BETWEEN (i.One, i.One) AND (i.Three, i.One)

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	(i.Two, i.Nil) NOT BETWEEN (i.Two, i.One) AND (i.Two, i.Three)

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	(i.Two, i.Five) NOT BETWEEN (i.One, i.Nil) AND (i.Three, i.Nil)

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	(i.Two, i.Nil) NOT BETWEEN (i.One, i.Nil) AND (i.Three, i.Nil)

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	(i.Two, i.Two) NOT BETWEEN (i.Nil, i.One) AND (i.Three, i.Five)

