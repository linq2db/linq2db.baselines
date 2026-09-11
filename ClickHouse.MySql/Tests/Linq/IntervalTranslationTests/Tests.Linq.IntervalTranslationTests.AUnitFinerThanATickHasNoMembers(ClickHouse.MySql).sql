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
	toInt64(0),
	toInt64(0),
	toInt64(7000000000)
)

-- ClickHouse.MySql ClickHouse
SELECT
	r.InNanoseconds
FROM
	UnitSpreadRow r
LIMIT 2

-- ClickHouse.MySql ClickHouse
SELECT
	t1.Id,
	t1.InDays,
	t1.InMilliseconds,
	t1.InNanoseconds
FROM
	UnitSpreadRow t1
LIMIT 2

