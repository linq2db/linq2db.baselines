-- ClickHouse.Driver ClickHouse

INSERT INTO WithInitOnly
(
	Id,
	BaseValue,
	Value
)
VALUES
(
	1,
	'OneBase',
	'One'
)

-- ClickHouse.Driver ClickHouse

INSERT INTO WithInitOnly
(
	Id,
	BaseValue,
	Value
)
VALUES
(
	2,
	'TwoBase',
	'Two'
)

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.BaseValue,
	t1.Value
FROM
	WithInitOnly t1
ORDER BY
	t1.Id

-- ClickHouse.Driver ClickHouse

SELECT
	r.Id,
	r.Value,
	r.BaseValue
FROM
	WithInitOnly r
ORDER BY
	r.Id

