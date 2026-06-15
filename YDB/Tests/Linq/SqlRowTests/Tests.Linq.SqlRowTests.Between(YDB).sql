-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Ints i
WHERE
	(i.One, i.Two) BETWEEN (i.One, i.One * 2) AND (i.One, i.One + i.One)

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Ints i
WHERE
	(i.One, i.Three) BETWEEN (i.One, i.One) AND (i.One, i.Four)

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Ints i
WHERE
	(i.One, i.Two) BETWEEN (i.One, i.Three) AND (i.One, i.Two)

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Ints i
WHERE
	(i.Two, i.Five) BETWEEN (i.One, i.One) AND (i.Three, i.Two)

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Ints i
WHERE
	(i.Two, i.Five) BETWEEN (i.One, i.One) AND (i.Two, i.Two)

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Ints i
WHERE
	(i.Two, i.Nil) BETWEEN (i.One, i.One) AND (i.Three, i.One)

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Ints i
WHERE
	(i.Two, i.Nil) BETWEEN (i.Two, i.One) AND (i.Two, i.Three)

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Ints i
WHERE
	(i.Two, i.Five) BETWEEN (i.One, i.Nil) AND (i.Three, i.Nil)

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Ints i
WHERE
	(i.Two, i.Nil) BETWEEN (i.One, i.Nil) AND (i.Three, i.Nil)

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Ints i
WHERE
	(i.Two, i.Two) BETWEEN (i.Nil, i.One) AND (i.Three, i.Five)

