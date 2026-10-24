-- ClickHouse.MySql ClickHouse
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

-- ClickHouse.MySql ClickHouse
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

-- ClickHouse.MySql ClickHouse
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

-- ClickHouse.MySql ClickHouse
SELECT
	x.Name IS NOT NULL
FROM
	OptRow x
ORDER BY
	x.Id

