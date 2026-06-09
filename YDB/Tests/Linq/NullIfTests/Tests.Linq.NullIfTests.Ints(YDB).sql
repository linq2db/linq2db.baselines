-- YDB Ydb

SELECT
	CASE
		WHEN s.`Int` = 2 THEN NULL
		ELSE s.`Int`
	END as c1
FROM
	Src s
ORDER BY
	s.`Int`

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Src s
WHERE
	s.`Int` = 2

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Src s
WHERE
	s.`Int` <> 2

-- YDB Ydb

SELECT
	CASE
		WHEN s.`Int` = 4 THEN NULL
		ELSE s.`Int`
	END as c1
FROM
	Src s
ORDER BY
	s.`Int`

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Src s
WHERE
	s.`Int` = 4

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Src s
WHERE
	s.`Int` <> 4

-- YDB Ydb

SELECT
	s.`Int` as Int_1
FROM
	Src s
ORDER BY
	s.`Int`

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

-- YDB Ydb

SELECT
	CASE
		WHEN s.NullableInt = 2 THEN NULL
		ELSE s.NullableInt
	END as c1
FROM
	Src s
ORDER BY
	s.`Int`

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Src s
WHERE
	s.NullableInt = 2 OR s.NullableInt IS NULL

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Src s
WHERE
	NOT (s.NullableInt = 2 OR s.NullableInt IS NULL)

-- YDB Ydb

SELECT
	CASE
		WHEN s.NullableInt = 4 THEN NULL
		ELSE s.NullableInt
	END as c1
FROM
	Src s
ORDER BY
	s.`Int`

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Src s
WHERE
	s.NullableInt = 4 OR s.NullableInt IS NULL

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Src s
WHERE
	NOT (s.NullableInt = 4 OR s.NullableInt IS NULL)

-- YDB Ydb

SELECT
	s.NullableInt as NullableInt
FROM
	Src s
ORDER BY
	s.`Int`

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Src s
WHERE
	s.NullableInt IS NULL

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Src s
WHERE
	s.NullableInt IS NOT NULL

