-- ClickHouse.Octonica ClickHouse

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

-- ClickHouse.Octonica ClickHouse

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

-- ClickHouse.Octonica ClickHouse

SELECT
	r.Id,
	r.Value
FROM
	OptionDecimalTable r
WHERE
	r.Id = 1
LIMIT 2

-- ClickHouse.Octonica ClickHouse

SELECT
	r.Id,
	r.Value
FROM
	OptionDecimalTable r
WHERE
	r.Id = 2
LIMIT 2

