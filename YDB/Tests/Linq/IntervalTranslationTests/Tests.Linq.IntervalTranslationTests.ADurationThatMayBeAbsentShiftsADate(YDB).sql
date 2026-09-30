-- YDB Ydb
SELECT
	r.Id as Id,
	CAST(Timestamp('2026-03-01T00:00:00.000000Z') + DateTime::IntervalFromMicroseconds((r.Grace * 10000000l) / 10l) AS Timestamp) as c1,
	Unwrap(CAST(Timestamp('2026-03-01T00:00:00.000000Z') + DateTime::IntervalFromMicroseconds((r.Required * 10000000l) / 10l) AS Timestamp)) as c2
FROM
	OptionalDurationRow r
ORDER BY
	r.Id

