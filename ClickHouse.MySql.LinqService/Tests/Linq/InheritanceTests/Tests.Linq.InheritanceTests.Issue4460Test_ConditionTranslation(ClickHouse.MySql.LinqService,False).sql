BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

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
-- ClickHouse.MySql ClickHouse (asynchronously)

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
-- ClickHouse.MySql ClickHouse (asynchronously)

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
			THEN e.Id <> 0
		ELSE e.Id = 0
	END
ORDER BY
	e.Id

