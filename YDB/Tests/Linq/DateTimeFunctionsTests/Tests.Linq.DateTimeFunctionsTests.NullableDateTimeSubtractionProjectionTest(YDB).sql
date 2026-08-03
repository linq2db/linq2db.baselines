-- YDB Ydb
SELECT
	DateTime::ToMicroseconds(t.FinishedOn - t.StartedOn) * 10 as c1
FROM
	NullableDateTimeSub t
ORDER BY
	t.Id

