-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id,
	r.Value
FROM
	OptionNullableElemTable r
WHERE
	r.Id = 1
LIMIT 2

-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id,
	r.Value
FROM
	OptionNullableElemTable r
WHERE
	r.Id = 2
LIMIT 2

