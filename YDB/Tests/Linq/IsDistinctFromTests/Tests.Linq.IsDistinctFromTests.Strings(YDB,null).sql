-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Src s
WHERE
	s.String IS NOT NULL

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Src s
WHERE
	s.NullableString IS NOT NULL

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Src s
WHERE
	s.String IS NULL

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Src s
WHERE
	s.NullableString IS NULL

