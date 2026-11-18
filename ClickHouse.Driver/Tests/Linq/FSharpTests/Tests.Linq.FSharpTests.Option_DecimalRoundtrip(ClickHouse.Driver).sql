-- ClickHouse.Driver ClickHouse
INSERT INTO OptionDecimalTable
(
	Id,
	Value
)
VALUES
(
	1,
	toDecimal128('12.34', 10)
)

-- ClickHouse.Driver ClickHouse
INSERT INTO OptionDecimalTable
(
	Id,
	Value
)
VALUES
(
	2,
	NULL
)

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id,
	r.Value
FROM
	OptionDecimalTable r
WHERE
	r.Id = 1
LIMIT 2

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id,
	r.Value
FROM
	OptionDecimalTable r
WHERE
	r.Id = 2
LIMIT 2

