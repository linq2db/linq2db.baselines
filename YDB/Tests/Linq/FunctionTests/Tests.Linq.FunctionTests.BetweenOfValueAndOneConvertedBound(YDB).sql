-- YDB Ydb
DECLARE elapsed Int64
SET     elapsed = 42l
DECLARE maximum Int64
SET     maximum = 10l

SELECT
	r.Id as Id
FROM
	BetweenConvertedRow r
WHERE
	r.Id <= 2 AND $elapsed NOT BETWEEN r.Elapsed AND $maximum
ORDER BY
	r.Id

-- YDB Ydb
DECLARE longer Int64
SET     longer = 150l
DECLARE limit Int64
SET     limit = 130l

SELECT
	r.Id as Id
FROM
	BetweenConvertedRow r
WHERE
	$longer NOT BETWEEN r.Elapsed AND $limit
ORDER BY
	r.Id

-- YDB Ydb
DECLARE nullableValue Text(5) -- String
SET     nullableValue = '00042'u
DECLARE High Text(5) -- String
SET     High = '00005'u

SELECT
	r.Id as Id
FROM
	BetweenConvertedRow r
WHERE
	$nullableValue BETWEEN $High AND r.High
ORDER BY
	r.Id

-- YDB Ydb
DECLARE none Int64
SET     none = NULL
DECLARE limit Int64
SET     limit = 130l

SELECT
	r.Id as Id
FROM
	BetweenConvertedRow r
WHERE
	$none BETWEEN r.Elapsed AND $limit

-- YDB Ydb
DECLARE none Int64
SET     none = NULL
DECLARE limit Int64
SET     limit = 130l

SELECT
	r.Id as Id
FROM
	BetweenConvertedRow r
WHERE
	$none NOT BETWEEN r.Elapsed AND $limit

-- YDB Ydb
DECLARE none Int64
SET     none = NULL
DECLARE limit Int64
SET     limit = 130l

SELECT
	r.Id as Id
FROM
	BetweenConvertedRow r
WHERE
	$none NOT BETWEEN r.Elapsed AND $limit

-- YDB Ydb
DECLARE elapsed Int64
SET     elapsed = 42l
DECLARE minimum Int64
SET     minimum = 10l

SELECT
	r.Id as Id
FROM
	BetweenConvertedRow r
WHERE
	$elapsed BETWEEN $minimum AND r.Elapsed
ORDER BY
	r.Id

-- YDB Ydb
DECLARE value Text(5) -- String
SET     value = '00042'u
DECLARE Low Text(5) -- String
SET     Low = '00500'u

SELECT
	r.Id as Id
FROM
	BetweenConvertedRow r
WHERE
	$value BETWEEN r.Low AND $Low
ORDER BY
	r.Id

-- YDB Ydb
DECLARE value Text(5) -- String
SET     value = '00042'u
DECLARE High Text(5) -- String
SET     High = '00005'u

SELECT
	r.Id as Id
FROM
	BetweenConvertedRow r
WHERE
	$value BETWEEN $High AND r.High
ORDER BY
	r.Id

-- YDB Ydb
DECLARE value Text(5) -- String
SET     value = '00042'u
DECLARE High Text(5) -- String
SET     High = '00005'u

SELECT
	r.Id as Id
FROM
	BetweenConvertedRow r
WHERE
	$value NOT BETWEEN $High AND r.High
ORDER BY
	r.Id

