-- ClickHouse.Driver ClickHouse
INSERT INTO StructDuOptRow
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
INSERT INTO StructDuOptRow
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
	StructDuOptRow x
ORDER BY
	x.Id

