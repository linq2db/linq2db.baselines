-- DuckDB
DECLARE $CoarseMidnight DATE -- Date
SET     $CoarseMidnight = '2026-06-01 00:00:00.000000'::TIMESTAMP

SELECT
	COUNT(*)
FROM
	ConvertedDayPairRow r
WHERE
	Coalesce(r.ClosedOn, r.OpenedOn) IN ($CoarseMidnight)

