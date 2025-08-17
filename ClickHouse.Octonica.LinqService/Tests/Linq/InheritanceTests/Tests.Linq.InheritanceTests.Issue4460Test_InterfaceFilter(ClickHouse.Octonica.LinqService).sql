BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

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
-- ClickHouse.Octonica ClickHouse (asynchronously)

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
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	e.Code,
	e.Id,
	e.Age,
	e.Name
FROM
	Base e
WHERE
	e.Code <> 'Child' OR e.Code IS NULL

