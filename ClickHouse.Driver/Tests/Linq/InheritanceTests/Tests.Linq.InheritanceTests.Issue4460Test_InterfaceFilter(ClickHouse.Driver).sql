-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

SELECT
	e.Code,
	e.Id,
	e.Age,
	e.Name
FROM
	Base e
WHERE
	e.Code <> 'Child' OR e.Code IS NULL

