-- ClickHouse.Driver ClickHouse
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

-- ClickHouse.Driver ClickHouse
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

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id,
	r.IntValue,
	r.StrValue
FROM
	VOptionTable r
WHERE
	r.Id = 1
LIMIT 2

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id,
	r.IntValue,
	r.StrValue
FROM
	VOptionTable r
WHERE
	r.Id = 2
LIMIT 2

