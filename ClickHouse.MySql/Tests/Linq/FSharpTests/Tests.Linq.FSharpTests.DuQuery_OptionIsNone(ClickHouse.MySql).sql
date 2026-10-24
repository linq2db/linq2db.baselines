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
	x.Id,
	x.Key
FROM
	DuOptRow x
WHERE
	x.Key IS NULL

