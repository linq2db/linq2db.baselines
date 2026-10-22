-- YDB Ydb
SELECT
	CASE
		WHEN r.Id > 0 THEN r.OpenedOn
		ELSE r.ClosedOn
	END as c1
FROM
	CoarseDayPairRow r
UNION ALL
SELECT
	Unwrap(CAST(Timestamp('2026-06-01T10:00:00.000000Z') AS Timestamp)) as c1
FROM
	CoarseDayPairRow r_1

