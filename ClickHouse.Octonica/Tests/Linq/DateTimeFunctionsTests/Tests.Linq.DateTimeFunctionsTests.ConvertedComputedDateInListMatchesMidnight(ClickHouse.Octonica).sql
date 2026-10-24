-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*)
FROM
	ConvertedDayPairRow r
WHERE
	toDateTime64(Coalesce(r.ClosedOn, r.OpenedOn), 7) IN (toDate('2026-06-01'))

