-- ClickHouse.MySql ClickHouse
INSERT INTO UnitSpreadRow
(
	Id,
	InDays,
	InMilliseconds,
	InNanoseconds
)
VALUES
(
	1,
	toInt64(2),
	toInt64(3723456),
	toInt64(7000123400)
)

-- ClickHouse.MySql ClickHouse
SELECT
	t1.Id,
	t1.InDays,
	t1.InMilliseconds,
	t1.InNanoseconds
FROM
	UnitSpreadRow t1
LIMIT 2

-- ClickHouse.MySql ClickHouse
SELECT
	toFloat64(toInt64(r.InDays) * toInt64(864000000000)) / toFloat64(36000000000),
	toInt32(intDiv(toInt64(r.InMilliseconds) * toInt64(10000), toInt64(10000000)) % toInt64(60))
FROM
	UnitSpreadRow r
LIMIT 2

