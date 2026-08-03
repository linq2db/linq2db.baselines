-- DuckDB
SELECT
	date_diff('microsecond', t.StartedOn, t.FinishedOn) * 10
FROM
	NullableDtOffsetSub t
ORDER BY
	t.Id

