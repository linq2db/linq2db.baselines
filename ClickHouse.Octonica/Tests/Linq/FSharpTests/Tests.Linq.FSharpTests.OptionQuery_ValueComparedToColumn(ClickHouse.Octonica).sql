-- ClickHouse.Octonica ClickHouse
INSERT INTO OptRow
(
	Id,
	Name,
	Age
)
VALUES
(
	1,
	'a',
	5
)

-- ClickHouse.Octonica ClickHouse
INSERT INTO OptRow
(
	Id,
	Name,
	Age
)
VALUES
(
	2,
	NULL,
	NULL
)

-- ClickHouse.Octonica ClickHouse
INSERT INTO OptRow
(
	Id,
	Name,
	Age
)
VALUES
(
	3,
	'b',
	7
)

-- ClickHouse.Octonica ClickHouse
INSERT INTO OptRow
(
	Id,
	Name,
	Age
)
VALUES
(
	4,
	NULL,
	4
)

-- ClickHouse.Octonica ClickHouse
SELECT
	x.Id
FROM
	OptRow x
WHERE
	x.Age = x.Id

