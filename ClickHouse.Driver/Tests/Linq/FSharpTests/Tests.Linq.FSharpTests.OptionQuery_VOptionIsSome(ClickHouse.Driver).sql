-- ClickHouse.Driver ClickHouse
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

-- ClickHouse.Driver ClickHouse
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

-- ClickHouse.Driver ClickHouse
SELECT
	x.Id,
	x.Name
FROM
	VOptRow x
WHERE
	x.Name IS NOT NULL

