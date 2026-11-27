-- ClickHouse.Octonica ClickHouse
INSERT INTO SkipOnInsertTable
(
	Id,
	Name
)
VALUES
(
	1,
	'Smith'
)

-- ClickHouse.Octonica ClickHouse
SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	SkipOnInsertTable t
WHERE
	t.Id = 1
LIMIT 1

-- ClickHouse.Octonica ClickHouse
INSERT INTO SkipOnInsertTable
(
	Id,
	Name
)
VALUES
(
	2,
	'Tommy'
)

-- ClickHouse.Octonica ClickHouse
SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	SkipOnInsertTable t
WHERE
	t.Id = 2
LIMIT 1

