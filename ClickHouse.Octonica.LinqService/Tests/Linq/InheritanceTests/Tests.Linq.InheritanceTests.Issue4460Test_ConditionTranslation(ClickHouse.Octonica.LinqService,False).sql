BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Base

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

SELECT
	e.Code,
	e.Id,
	e.Name,
	e.Age,
	e.IsMale
FROM
	Base e
WHERE
	CASE
		WHEN e.Code = 'BaseChild' OR e.Code = 'Child' OR e.Code = 'Child2'
			THEN CASE
			WHEN e.Id <> 0 THEN true
			ELSE false
		END
		WHEN e.Id <> 0 THEN true
		ELSE false
	END = true
ORDER BY
	e.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Base

