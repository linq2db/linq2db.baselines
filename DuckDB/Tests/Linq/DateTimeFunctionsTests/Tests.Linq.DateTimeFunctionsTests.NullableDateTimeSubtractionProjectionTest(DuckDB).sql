-- DuckDB
SELECT
	date_diff('microsecond', t.StartedOn, t.FinishedOn) * 10
FROM
	NullableDateTimeSub t
ORDER BY
	t.Id

