-- ClickHouse.Octonica ClickHouse

INSERT INTO TestBool
(
	Id,
	Value
)
VALUES
(
	1,
	NULL
)

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	TestBool t1
LIMIT 2

-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	TestBool
UPDATE
	Id = 1,
	Value = NOT Value
WHERE 1

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	TestBool t1
LIMIT 2

