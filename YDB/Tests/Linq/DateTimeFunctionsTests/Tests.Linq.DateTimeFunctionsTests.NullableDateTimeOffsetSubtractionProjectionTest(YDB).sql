-- YDB Ydb
SELECT
	DateTime::ToMicroseconds(t.FinishedOn - t.StartedOn) * 10 as c1
FROM
	NullableDtOffsetSub t
ORDER BY
	t.Id

