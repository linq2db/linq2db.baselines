-- ClickHouse.Octonica ClickHouse
SELECT
	LAG(r.Value, 1, toDateTime('2026-05-25 09:00:00')) OVER (ORDER BY r.Id)
FROM
	CoarseConvertedRow r
ORDER BY
	r.Id

