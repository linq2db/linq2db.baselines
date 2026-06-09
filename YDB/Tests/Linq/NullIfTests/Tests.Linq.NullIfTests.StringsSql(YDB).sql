-- YDB Ydb

SELECT
	CASE
		WHEN s.String = 'abc'u THEN NULL
		ELSE s.String
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
	s.String = 'abc'u OR s.String IS NULL

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Src s
WHERE
	NOT (s.String = 'abc'u OR s.String IS NULL)

-- YDB Ydb

SELECT
	CASE
		WHEN s.String = 'xyz'u THEN NULL
		ELSE s.String
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
	s.String = 'xyz'u OR s.String IS NULL

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Src s
WHERE
	NOT (s.String = 'xyz'u OR s.String IS NULL)

-- YDB Ydb

SELECT
	s.String as String
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
	s.String IS NULL

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Src s
WHERE
	s.String IS NOT NULL

-- YDB Ydb

SELECT
	CASE
		WHEN s.NullableString = 'abc'u THEN NULL
		ELSE s.NullableString
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
	s.NullableString = 'abc'u OR s.NullableString IS NULL

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Src s
WHERE
	NOT (s.NullableString = 'abc'u OR s.NullableString IS NULL)

-- YDB Ydb

SELECT
	CASE
		WHEN s.NullableString = 'xyz'u THEN NULL
		ELSE s.NullableString
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
	s.NullableString = 'xyz'u OR s.NullableString IS NULL

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Src s
WHERE
	NOT (s.NullableString = 'xyz'u OR s.NullableString IS NULL)

-- YDB Ydb

SELECT
	s.NullableString as NullableString
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
	s.NullableString IS NULL

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Src s
WHERE
	s.NullableString IS NOT NULL

