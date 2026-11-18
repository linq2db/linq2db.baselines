-- DuckDB
SELECT
	CAST(Date_Diff('microsecond', e."Date", e.Date2) * 10 AS DOUBLE) / CAST(Date_Diff('microsecond', j."Date", j.Date2) * 10 AS DOUBLE)
FROM
	MissedDivisorEntity e
		LEFT JOIN MissedDivisorEntity j ON j.Id = e.Id + 1000

