-- DuckDB
SELECT
	CAST(Date_Diff('microsecond', x.StartedOn, b.FinishedOn) * 10 AS DOUBLE) / 864000000000,
	CAST((Date_Diff('microsecond', x.StartedOn, b.FinishedOn) * 10) // 864000000000 AS INTEGER)
FROM
	OuterJoinLeft x
		LEFT JOIN OuterJoinRight b ON b.Id = x.Id
ORDER BY
	x.Id

-- DuckDB
SELECT
	x.Id
FROM
	OuterJoinLeft x
		LEFT JOIN OuterJoinRight b ON b.Id = x.Id
WHERE
	CAST(Date_Diff('microsecond', x.StartedOn, b.FinishedOn) * 10 AS DOUBLE) / 864000000000 > 1

