-- ClickHouse.Octonica ClickHouse
INSERT INTO NestedDurationRow
(
	Id,
	Declared,
	Converted
)
VALUES
(
	1,
	toInt64(5400),
	toInt64(5400)
)

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.Declared,
	t1.Converted
FROM
	NestedDurationRow t1
LIMIT 2

-- ClickHouse.Octonica ClickHouse
SELECT
	toFloat64(r.Declared) / toFloat64(60)
FROM
	NestedDurationRow r
LIMIT 2

