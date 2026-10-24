-- ClickHouse.MySql ClickHouse
INSERT INTO DuOptRow
(
	Id,
	Key
)
VALUES
(
	1,
	10
)

-- ClickHouse.MySql ClickHouse
INSERT INTO DuOptRow
(
	Id,
	Key
)
VALUES
(
	2,
	NULL
)

-- ClickHouse.MySql ClickHouse
SELECT
	x.Key
FROM
	DuOptRow x
WHERE
	x.Key IS NOT NULL
ORDER BY
	x.Id

