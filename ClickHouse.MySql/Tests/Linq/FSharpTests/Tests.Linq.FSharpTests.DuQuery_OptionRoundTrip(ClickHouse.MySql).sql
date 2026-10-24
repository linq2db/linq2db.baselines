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
ORDER BY
	x.Id

