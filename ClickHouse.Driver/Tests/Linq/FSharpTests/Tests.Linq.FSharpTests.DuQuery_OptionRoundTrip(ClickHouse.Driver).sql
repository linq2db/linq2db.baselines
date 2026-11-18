-- ClickHouse.Driver ClickHouse
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

-- ClickHouse.Driver ClickHouse
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

-- ClickHouse.Driver ClickHouse
SELECT
	x.Key
FROM
	DuOptRow x
ORDER BY
	x.Id

