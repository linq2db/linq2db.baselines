-- ClickHouse.Driver ClickHouse
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

-- ClickHouse.Driver ClickHouse
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

-- ClickHouse.Driver ClickHouse
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
			THEN e.Id <> 0
		ELSE e.Id = 0
	END
ORDER BY
	e.Id

