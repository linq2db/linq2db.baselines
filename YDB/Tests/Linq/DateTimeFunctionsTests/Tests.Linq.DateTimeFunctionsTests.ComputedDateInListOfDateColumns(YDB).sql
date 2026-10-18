-- YDB Ydb
SELECT
	COUNT(*) as Count_1
FROM
	CoarseDayPairRow r
WHERE
	Coalesce(r.ClosedOn, r.OpenedOn) IN (r.OpenedOn)

