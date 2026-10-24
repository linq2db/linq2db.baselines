-- ClickHouse.MySql ClickHouse
INSERT INTO VOptionTable
(
	Id,
	IntValue,
	StrValue
)
VALUES
(
	1,
	42,
	'hello'
)

-- ClickHouse.MySql ClickHouse
INSERT INTO VOptionTable
(
	Id,
	IntValue,
	StrValue
)
VALUES
(
	2,
	NULL,
	NULL
)

-- ClickHouse.MySql ClickHouse
SELECT
	r.Id,
	r.IntValue,
	r.StrValue
FROM
	VOptionTable r
WHERE
	r.Id = 1
LIMIT 2

-- ClickHouse.MySql ClickHouse
SELECT
	r.Id,
	r.IntValue,
	r.StrValue
FROM
	VOptionTable r
WHERE
	r.Id = 2
LIMIT 2

