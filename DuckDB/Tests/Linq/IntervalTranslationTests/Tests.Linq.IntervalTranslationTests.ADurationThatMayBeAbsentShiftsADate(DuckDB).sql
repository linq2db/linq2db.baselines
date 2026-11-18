-- DuckDB
SELECT
	r.Id,
	CAST('2026-03-01 00:00:00.000000'::TIMESTAMP AS TIMESTAMP) + To_Microseconds((r.Grace * 10000000) // 10),
	CAST('2026-03-01 00:00:00.000000'::TIMESTAMP AS TIMESTAMP) + To_Microseconds((r.Required * 10000000) // 10)
FROM
	OptionalDurationRow r
ORDER BY
	r.Id

