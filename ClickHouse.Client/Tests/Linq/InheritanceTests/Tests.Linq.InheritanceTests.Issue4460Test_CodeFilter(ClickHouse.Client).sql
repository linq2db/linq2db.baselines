BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Base

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Base
(
	Code Nullable(String),
	Id   Int32,
	Name Nullable(String),
	Age  Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN e.Code = 'Child2' THEN true
		ELSE false
	END,
	e.Code,
	e.Id,
	e.Age,
	CASE
		WHEN e.Code = 'Child' THEN true
		ELSE false
	END,
	e.Name
FROM
	Base e
WHERE
	e.Code <> 'Child' OR e.Code IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Base

