-- DuckDB
DECLARE $value TIMESTAMP -- DateTime2
SET     $value = '2020-01-02 12:00:00.000000'::TIMESTAMP
DECLARE $high TIMESTAMP -- DateTime2
SET     $high = '2020-01-02 06:00:00.000000'::TIMESTAMP

SELECT
	r.Id
FROM
	BetweenUsesRow r
WHERE
	CAST($value AS TIMESTAMP) BETWEEN r."Day" AND $high OR
	CAST($value AS TIMESTAMP) <= CAST(r.Stamp AS DATE)

-- DuckDB
DECLARE $value TIMESTAMP -- DateTime2
SET     $value = '2020-01-02 12:00:00.000000'::TIMESTAMP
DECLARE $high TIMESTAMP -- DateTime2
SET     $high = '2020-01-02 06:00:00.000000'::TIMESTAMP

SELECT
	r.Id
FROM
	BetweenUsesRow r
WHERE
	CAST($value AS TIMESTAMP) BETWEEN r."Day" AND $high OR
	EXISTS(
		SELECT
			*
		FROM
			BetweenUsesRow x
		WHERE
			x.Id = r.Id AND CAST($value AS TIMESTAMP) >= CAST(x.Stamp AS DATE)
	)
ORDER BY
	r.Id

-- DuckDB
DECLARE $value TIMESTAMP -- DateTime2
SET     $value = '2020-01-02 12:00:00.000000'::TIMESTAMP
DECLARE $high TIMESTAMP -- DateTime2
SET     $high = '2020-01-02 06:00:00.000000'::TIMESTAMP

SELECT
	r.Id
FROM
	BetweenUsesRow r
WHERE
	CAST($value AS TIMESTAMP) BETWEEN r."Day" AND $high OR
	CAST($value AS TIMESTAMP) + (r.Id - 2) * Interval '1 Day' <= r.Stamp

-- DuckDB
DECLARE $none TIMESTAMP -- DateTime2
SET     $none = NULL
DECLARE $high TIMESTAMP -- DateTime2
SET     $high = '2020-01-02 06:00:00.000000'::TIMESTAMP

SELECT
	r.Id
FROM
	BetweenUsesRow r
WHERE
	CAST($none AS TIMESTAMP) BETWEEN r."Day" AND $high

