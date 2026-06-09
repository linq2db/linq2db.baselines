-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Ints i
WHERE
	(i.One, i.Two) NOT IN ((1, i.One * 2))

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Ints i
WHERE
	(i.One, i.Two, i.Three) NOT IN ((i.One, i.One * 2, i.Four - 1), (0, 7, 9), (NULL, -1, i.Four))

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Ints i
WHERE
	(i.One, i.Three, i.Four) NOT IN ((i.One, i.One * 2, i.Four - 1), (0, 7, 9), (NULL, 2, i.Four))

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Ints i
WHERE
	(i.One, i.Two, i.Four) NOT IN ((i.One, i.One * 2, i.Four - 1), (0, 7, 9), (NULL, 2, i.Four))

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Ints i
WHERE
	(i.Nil, i.Two, i.Four) NOT IN ((i.One, i.One * 2, i.Four - 1), (0, 7, 9), (NULL, 2, i.Four))

