-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Ints i
WHERE
	(i.One, i.Two, i.Three) = (i.One, i.One * 2, i.Four - 1)

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Ints i
WHERE
	(i.One, i.Two, i.Four) = (i.One, i.Two, i.Three)

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Ints i
WHERE
	(i.One, i.Nil, i.Three) = (i.One, i.Two, i.Three)

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Ints i
WHERE
	(1, i.Nil, 3) = (i.One, i.Nil, i.Three)

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Ints i
WHERE
	(1, NULL, 3) = (i.One, i.Nil, i.Three)

