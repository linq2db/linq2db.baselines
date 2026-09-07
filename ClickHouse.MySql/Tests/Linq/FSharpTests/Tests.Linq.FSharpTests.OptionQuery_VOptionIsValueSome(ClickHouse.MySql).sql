-- ClickHouse.MySql ClickHouse
INSERT INTO VOptRow
(
	Id,
	Name
)
VALUES
(
	1,
	'a'
)

-- ClickHouse.MySql ClickHouse
INSERT INTO VOptRow
(
	Id,
	Name
)
VALUES
(
	2,
	NULL
)

-- ClickHouse.MySql ClickHouse
SELECT
	x.Id,
	x.Name
FROM
	VOptRow x
WHERE
	x.Name IS NOT NULL

