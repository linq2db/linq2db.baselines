-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id,
	r.IntValue,
	r.StrValue
FROM
	VOptionTable r
WHERE
	r.Id = 1
LIMIT 2

-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id,
	r.IntValue,
	r.StrValue
FROM
	VOptionTable r
WHERE
	r.Id = 2
LIMIT 2

