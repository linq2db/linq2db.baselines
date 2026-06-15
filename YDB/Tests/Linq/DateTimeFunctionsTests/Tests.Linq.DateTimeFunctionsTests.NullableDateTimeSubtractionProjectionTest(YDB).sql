-- YDB Ydb

SELECT
	t.FinishedOn as FinishedOn,
	t.StartedOn as StartedOn
FROM
	NullableDateTimeSub t
ORDER BY
	t.Id

