-- YDB Ydb
SELECT
	t.FinishedOn as FinishedOn,
	t.StartedOn as StartedOn
FROM
	NullableDtOffsetSub t
ORDER BY
	t.Id

