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
	x.Id,
	x.Key
FROM
	DuOptRow x
WHERE
	x.Key IS NULL

