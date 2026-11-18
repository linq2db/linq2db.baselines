-- ClickHouse.MySql ClickHouse
INSERT INTO CoarseDateShapesRow
(
	Id,
	Value,
	Day,
	Wide
)
VALUES
(
	1,
	toDateTime('2026-06-01 10:00:00'),
	toDate32('2026-06-01'),
	toDateTime64('2026-06-01 10:00:00.0000000', 7)
)

-- ClickHouse.MySql ClickHouse
SELECT
	toDate(r.Value) as c1
FROM
	CoarseDateShapesRow r
UNION ALL
SELECT
	r_1.Day as c1
FROM
	CoarseDateShapesRow r_1

-- ClickHouse.MySql ClickHouse
SELECT
	CASE
		WHEN r.Id > 0 THEN toDate32(r.Value)
		ELSE toDate(r.Value)
	END
FROM
	CoarseDateShapesRow r

