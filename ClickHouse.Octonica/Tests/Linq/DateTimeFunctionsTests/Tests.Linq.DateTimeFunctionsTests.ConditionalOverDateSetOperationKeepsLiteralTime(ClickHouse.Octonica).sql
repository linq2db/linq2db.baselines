-- ClickHouse.Octonica ClickHouse
SELECT
	CASE
		WHEN r.Id > 0 THEN r.OpenedOn
		ELSE r.ClosedOn
	END as c1
FROM
	CoarseDayPairRow r
UNION ALL
SELECT
	toDateTime64(toDateTime64('2026-06-01 10:00:00.0000000', 7), 7) as c1
FROM
	CoarseDayPairRow r_1

