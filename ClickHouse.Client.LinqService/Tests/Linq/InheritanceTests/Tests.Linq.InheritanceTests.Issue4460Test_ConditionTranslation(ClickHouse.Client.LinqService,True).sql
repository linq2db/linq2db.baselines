BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Base

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Base
(
	Code   Nullable(String),
	Id     Int32,
	Name   Nullable(String),
	IsMale Nullable(Bool),
	Age    Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Base
(
	Code,
	Id,
	Name,
	IsMale
)
VALUES
(
	'Child',
	1,
	'Jane',
	false
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Base
(
	Code,
	Id,
	Name,
	Age
)
VALUES
(
	'Child2',
	2,
	NULL,
	10
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	e.Code,
	e.Id,
	e.Name,
	e.IsMale,
	e.Age
FROM
	Base e
WHERE
	CASE
		WHEN e.Code = 'Child2' OR e.Code = 'Child' OR e.Code = 'BaseChild'
			THEN 1 = 1
		ELSE e.Id <> 0
	END
ORDER BY
	e.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Base

