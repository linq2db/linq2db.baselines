-- DuckDB
DECLARE $fallback TIMESTAMP -- DateTime
SET     $fallback = '2026-05-25 09:00:00.000000'::TIMESTAMP

SELECT
	LAG(r."Value", 1, $fallback) OVER (ORDER BY r.Id)
FROM
	CoarseConvertedRow r
ORDER BY
	r.Id

