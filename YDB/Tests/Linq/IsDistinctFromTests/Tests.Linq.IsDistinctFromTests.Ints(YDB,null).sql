-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Src s

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Src s
WHERE
	s.NullableInt IS NOT NULL

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Src s
WHERE
	1 = 0

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Src s
WHERE
	s.NullableInt IS NULL

