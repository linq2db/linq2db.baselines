BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Base

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
		WHEN e.Code = 'Child2' AND e.Code IS NOT NULL OR e.Code = 'Child' AND e.Code IS NOT NULL OR e.Code = 'BaseChild' AND e.Code IS NOT NULL
			THEN true
		WHEN e.Id <> 0 THEN true
		ELSE false
	END
ORDER BY
	e.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Base

