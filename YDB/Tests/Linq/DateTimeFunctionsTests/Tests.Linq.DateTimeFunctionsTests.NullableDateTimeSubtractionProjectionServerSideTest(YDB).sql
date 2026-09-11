-- YDB Ydb
SELECT
	CAST(t.FinishedOn - t.StartedOn AS Int64) * 10l as Time_1
FROM
	NullableDateTimeSub t
ORDER BY
	t.Id

