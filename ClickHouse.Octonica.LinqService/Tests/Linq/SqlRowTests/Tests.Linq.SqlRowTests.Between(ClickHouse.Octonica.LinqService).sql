﻿BeforeExecute
--  ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	(i.One, i.Two) BETWEEN (i.One, i.One * 2) AND (i.One, i.One + i.One)

BeforeExecute
--  ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	(i.One, i.Three) BETWEEN (i.One, i.One) AND (i.One, i.Four)

BeforeExecute
--  ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	(i.One, i.Two) BETWEEN (i.One, i.Three) AND (i.One, i.Two)

BeforeExecute
--  ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	(i.Two, i.Five) BETWEEN (i.One, i.One) AND (i.Three, i.Two)

BeforeExecute
--  ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	(i.Two, i.Five) BETWEEN (i.One, i.One) AND (i.Two, i.Two)

BeforeExecute
--  ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	(i.Two, i.Nil) BETWEEN (i.One, i.One) AND (i.Three, i.One)

BeforeExecute
--  ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	(i.Two, i.Nil) BETWEEN (i.Two, i.One) AND (i.Two, i.Three)

BeforeExecute
--  ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	(i.Two, i.Five) BETWEEN (i.One, i.Nil) AND (i.Three, i.Nil)

BeforeExecute
--  ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	(i.Two, i.Nil) BETWEEN (i.One, i.Nil) AND (i.Three, i.Nil)

BeforeExecute
--  ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	(i.Two, i.Two) BETWEEN (i.Nil, i.One) AND (i.Three, i.Five)

