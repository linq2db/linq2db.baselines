-- DuckDB
DECLARE $value TIMESTAMP -- DateTime2
SET     $value = '2020-01-02 12:00:00.000000'::TIMESTAMP
DECLARE $high TIMESTAMP -- DateTime2
SET     $high = '2020-01-02 06:00:00.000000'::TIMESTAMP
DECLARE $value_1 DATE -- Date
SET     $value_1 = '2020-01-02 12:00:00.000000'::TIMESTAMP
DECLARE $later TIMESTAMP -- DateTime2
SET     $later = '2020-01-03 00:00:00.000000'::TIMESTAMP

SELECT
	CAST($value AS TIMESTAMP) BETWEEN r."Day" AND $high,
	False,
	CAST($value AS TIMESTAMP) NOT BETWEEN r."Day" AND $high,
	True,
	CAST($value AS TIMESTAMP) BETWEEN r."Day" AND r.Stamp,
	$value_1 >= r."Day" AND CAST($value AS TIMESTAMP) <= r.Stamp,
	CASE
		WHEN CAST($value AS TIMESTAMP) NOT BETWEEN Coalesce(d."Day", '0001-01-01'::DATE) AND $later
			THEN 'a'
		ELSE 'b'
	END
FROM
	BetweenDayRow r
		LEFT JOIN BetweenDayRow d ON d.Id = r.Id - 1
ORDER BY
	r.Id

-- DuckDB
DECLARE $value TIMESTAMP -- DateTime2
SET     $value = '2020-01-02 12:00:00.000000'::TIMESTAMP
DECLARE $later TIMESTAMP -- DateTime2
SET     $later = '2020-01-03 00:00:00.000000'::TIMESTAMP

SELECT
	r.Id
FROM
	BetweenDayRow r
		LEFT JOIN BetweenDayRow d ON d.Id = r.Id - 1
WHERE
	CAST($value AS TIMESTAMP) NOT BETWEEN d."Day" AND $later

-- DuckDB
DECLARE $value TIMESTAMP -- DateTime2
SET     $value = '2020-01-02 12:00:00.000000'::TIMESTAMP
DECLARE $high TIMESTAMP -- DateTime2
SET     $high = '2020-01-02 06:00:00.000000'::TIMESTAMP

SELECT
	r.Id
FROM
	BetweenDayRow r
WHERE
	CAST($value AS TIMESTAMP) BETWEEN r."Day" AND $high OR
	CAST($value AS TIMESTAMP) >= CAST(r.Stamp AS DATE)
ORDER BY
	r.Id

