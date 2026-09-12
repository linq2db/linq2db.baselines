-- DuckDB
SELECT
	CAST(Date_Diff('microsecond', r.Dto, (
		SELECT
			b.Dto
		FROM
			ZonedRow b
		WHERE
			b.Id = 2
	)) * 10 AS DOUBLE) / 36000000000
FROM
	ZonedRow r
WHERE
	r.Id = 1
LIMIT 2

