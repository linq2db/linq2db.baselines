-- ClickHouse.Driver ClickHouse
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
	toInt64(7000),
	toInt64(7000000000)
)

-- ClickHouse.Driver ClickHouse
SELECT
	r.InNanoseconds
FROM
	UnitSpreadRow r
LIMIT 2

