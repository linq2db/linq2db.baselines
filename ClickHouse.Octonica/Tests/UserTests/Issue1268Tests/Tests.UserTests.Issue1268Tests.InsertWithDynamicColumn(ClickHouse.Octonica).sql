BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS DynamicColumnTable

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS DynamicColumnTable
(
	Id        Int32,
	Name      Nullable(String),
	IsDeleted Bool
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO DynamicColumnTable
(
	Id,
	Name,
	IsDeleted
)
VALUES
(
	1,
	'Some1',
	true
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO DynamicColumnTable
(
	Id,
	Name,
	IsDeleted
)
VALUES
(
	2,
	'Some2',
	false
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	e.Id,
	e.Name,
	e.IsDeleted
FROM
	DynamicColumnTable e
WHERE
	e.Name = 'Some1' AND e.Name IS NOT NULL
LIMIT 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	e.Id,
	e.Name,
	e.IsDeleted
FROM
	DynamicColumnTable e
WHERE
	e.Name = 'Some2' AND e.Name IS NOT NULL
LIMIT 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS DynamicColumnTable

