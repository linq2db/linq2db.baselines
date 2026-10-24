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
	toInt64(172800000),
	toInt64(172800000000000)
)

-- ClickHouse.MySql ClickHouse
SELECT
	r.Id
FROM
	UnitSpreadRow r
WHERE
	r.InDays * toInt64(86400000) IN (
		SELECT
			x.InMilliseconds
		FROM
			UnitSpreadRow x
	)

-- ClickHouse.MySql ClickHouse
SELECT
	r.Id
FROM
	UnitSpreadRow r
WHERE
	r.InMilliseconds IN (
		SELECT
			x.InDays * toInt64(86400000)
		FROM
			UnitSpreadRow x
	)

