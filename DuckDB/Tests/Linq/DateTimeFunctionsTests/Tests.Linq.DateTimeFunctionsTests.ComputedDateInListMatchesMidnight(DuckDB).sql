-- DuckDB
SELECT
	COUNT(*)
FROM
	CoarseDayPairRow r
WHERE
	Coalesce(r.ClosedOn, r.OpenedOn) IN ('2026-06-01 00:00:00.000000'::TIMESTAMP)

-- DuckDB
SELECT
	COUNT(*)
FROM
	CoarseDayPairRow r
WHERE
	Coalesce(r.ClosedOn, r.OpenedOn) IN ('2026-06-01 00:00:00.000000'::TIMESTAMP)

-- DuckDB
SELECT
	COUNT(*)
FROM
	CoarseDayPairRow r
WHERE
	CAST(r."Value" AS DATE) IN ('2026-06-01 00:00:00.000000'::TIMESTAMP)

-- DuckDB
SELECT
	COUNT(*)
FROM
	CoarseDayPairRow r
WHERE
	Coalesce(r.ClosedOn, r.OpenedOn) IN ('2026-06-01 10:00:00.000000'::TIMESTAMP)

