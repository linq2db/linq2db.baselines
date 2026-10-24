-- DuckDB
SELECT
	Date_Diff('microsecond', t.StartedOn, t.FinishedOn) * 10
FROM
	NullableDtOffsetSub t
ORDER BY
	t.Id

