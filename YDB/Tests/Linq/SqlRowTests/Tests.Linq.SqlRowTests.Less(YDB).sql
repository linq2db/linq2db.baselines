-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Ints i
WHERE
	(i.One, i.Two, i.Three) < (i.One, i.One * 2, i.Four - 1)

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Ints i
WHERE
	(i.One, i.Two, i.Four) < (i.One, i.Two, i.Three)

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Ints i
WHERE
	(i.One, i.Two, i.Four) < (i.One, i.Five, i.Three)

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Ints i
WHERE
	(i.One, i.Nil, i.One) < (i.One, i.Two, i.Three)

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Ints i
WHERE
	(0, NULL, 3) < (i.One, i.Two, i.Three)

