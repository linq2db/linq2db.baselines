-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.InDays,
	t1.InMilliseconds,
	t1.InNanoseconds
FROM
	UnitSpreadRow t1
LIMIT 2

-- ClickHouse.Octonica ClickHouse
SELECT
	toFloat64(r.InDays * toInt64(24)),
	toInt32(intDiv(r.InMilliseconds, toInt64(1000)) % toInt64(60))
FROM
	UnitSpreadRow r
LIMIT 2

