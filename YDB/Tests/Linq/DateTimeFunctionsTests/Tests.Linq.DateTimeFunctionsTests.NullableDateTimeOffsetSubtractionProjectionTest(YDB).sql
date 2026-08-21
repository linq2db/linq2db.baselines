-- YDB Ydb
SELECT
	CAST(t.FinishedOn - t.StartedOn AS Int64) * 10l as c1
FROM
	NullableDtOffsetSub t
ORDER BY
	t.Id

