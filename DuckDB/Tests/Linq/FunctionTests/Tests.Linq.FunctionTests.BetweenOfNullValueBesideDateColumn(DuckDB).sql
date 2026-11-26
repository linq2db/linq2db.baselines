-- DuckDB
DECLARE $none TIMESTAMP -- DateTime2
SET     $none = NULL
DECLARE $later TIMESTAMP -- DateTime2
SET     $later = '2020-01-03 00:00:00.000000'::TIMESTAMP

SELECT
	r.Id
FROM
	BetweenDayRow r
WHERE
	CAST($none AS TIMESTAMP) BETWEEN r."Day" AND $later

-- DuckDB
DECLARE $none TIMESTAMP -- DateTime2
SET     $none = NULL
DECLARE $later TIMESTAMP -- DateTime2
SET     $later = '2020-01-03 00:00:00.000000'::TIMESTAMP

SELECT
	r.Id
FROM
	BetweenDayRow r
WHERE
	CAST($none AS TIMESTAMP) NOT BETWEEN r."Day" AND $later

-- DuckDB
DECLARE $none TIMESTAMP -- DateTime2
SET     $none = NULL
DECLARE $later TIMESTAMP -- DateTime2
SET     $later = '2020-01-03 00:00:00.000000'::TIMESTAMP

SELECT
	r.Id
FROM
	BetweenDayRow r
WHERE
	$none NOT BETWEEN r.Stamp AND $later

-- DuckDB
DECLARE $none TIMESTAMP -- DateTime2
SET     $none = NULL
DECLARE $later TIMESTAMP -- DateTime2
SET     $later = '2020-01-03 00:00:00.000000'::TIMESTAMP

SELECT
	r.Id
FROM
	BetweenDayRow r
WHERE
	CAST($none AS TIMESTAMP) NOT BETWEEN r."Day" AND $later

-- DuckDB
DECLARE $none TIMESTAMP -- DateTime2
SET     $none = NULL
DECLARE $later TIMESTAMP -- DateTime2
SET     $later = '2020-01-03 00:00:00.000000'::TIMESTAMP

SELECT
	r.Id
FROM
	BetweenDayRow r
WHERE
	$none NOT BETWEEN r.Stamp AND $later

-- DuckDB
DECLARE $value TIMESTAMP -- DateTime2
SET     $value = '2020-01-02 12:00:00.000000'::TIMESTAMP
DECLARE $none TIMESTAMP -- DateTime2
SET     $none = NULL

SELECT
	r.Id
FROM
	BetweenDayRow r
WHERE
	CAST($value AS TIMESTAMP) NOT BETWEEN r."Day" AND $none

-- DuckDB
DECLARE $none TIMESTAMP -- DateTime2
SET     $none = NULL
DECLARE $high TIMESTAMP -- DateTime2
SET     $high = '2020-01-03 00:00:00.000000'::TIMESTAMP

SELECT
	r.Id
FROM
	BetweenDayRow r
WHERE
	CAST($none AS TIMESTAMP) NOT BETWEEN r."Day" AND $high

-- DuckDB
DECLARE $some TIMESTAMP -- DateTime2
SET     $some = '2020-01-02 12:00:00.000000'::TIMESTAMP
DECLARE $none TIMESTAMP -- DateTime2
SET     $none = NULL

SELECT
	r.Id
FROM
	BetweenDayRow r
WHERE
	CAST($some AS TIMESTAMP) NOT BETWEEN r."Day" AND $none

-- DuckDB
DECLARE $none TIMESTAMP -- DateTime2
SET     $none = NULL
DECLARE $later TIMESTAMP -- DateTime2
SET     $later = '2020-01-03 00:00:00.000000'::TIMESTAMP

SELECT
	CASE
		WHEN CAST($none AS TIMESTAMP) NOT BETWEEN r."Day" AND $later
			THEN 'a'
		ELSE 'b'
	END
FROM
	BetweenDayRow r
ORDER BY
	r.Id

