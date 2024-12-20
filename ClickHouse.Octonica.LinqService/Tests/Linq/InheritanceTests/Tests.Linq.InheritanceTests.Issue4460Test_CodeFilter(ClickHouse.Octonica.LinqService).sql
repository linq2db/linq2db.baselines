BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Base

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Base
(
	Code Nullable(String),
	Id   Int32,
	Name Nullable(String),
	Age  Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Base
(
	Code,
	Id,
	Name
)
VALUES
(
	'Child',
	1,
	'Jane'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Base
(
	Code,
	Id,
	Age
)
VALUES
(
	'Child2',
	2,
	10
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	e.Code,
	e.Id,
	e.Age,
	e.Name
FROM
	Base e
WHERE
	e.Code <> 'Child' OR e.Code IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Base

