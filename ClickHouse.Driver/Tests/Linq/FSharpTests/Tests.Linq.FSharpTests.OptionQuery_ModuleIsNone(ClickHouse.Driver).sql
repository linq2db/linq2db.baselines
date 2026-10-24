-- ClickHouse.Driver ClickHouse
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

-- ClickHouse.Driver ClickHouse
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

-- ClickHouse.Driver ClickHouse
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

-- ClickHouse.Driver ClickHouse
SELECT
	x.Id,
	x.Name,
	x.Age
FROM
	OptRow x
WHERE
	x.Name IS NULL

