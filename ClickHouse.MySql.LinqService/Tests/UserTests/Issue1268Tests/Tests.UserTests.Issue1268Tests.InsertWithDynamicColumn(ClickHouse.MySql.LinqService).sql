﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS DynamicColumnTable

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS DynamicColumnTable
(
	Id        Int32,
	Name      Nullable(String),
	IsDeleted Bool
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

SELECT
	e.Id,
	e.Name,
	e.IsDeleted
FROM
	DynamicColumnTable e
WHERE
	e.Name = 'Some1'
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	e.Id,
	e.Name,
	e.IsDeleted
FROM
	DynamicColumnTable e
WHERE
	e.Name = 'Some2'
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS DynamicColumnTable

