-- ClickHouse.Driver ClickHouse
INSERT INTO OptionNullableElemTable
(
	Id,
	Value
)
VALUES
(
	1,
	42
)

-- ClickHouse.Driver ClickHouse
INSERT INTO OptionNullableElemTable
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
	OptionNullableElemTable r
WHERE
	r.Id = 1
LIMIT 2

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id,
	r.Value
FROM
	OptionNullableElemTable r
WHERE
	r.Id = 2
LIMIT 2

