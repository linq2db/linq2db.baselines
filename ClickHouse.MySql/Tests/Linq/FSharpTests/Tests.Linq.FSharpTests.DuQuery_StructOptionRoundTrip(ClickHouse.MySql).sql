-- ClickHouse.MySql ClickHouse
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

-- ClickHouse.MySql ClickHouse
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

-- ClickHouse.MySql ClickHouse
SELECT
	x.Key
FROM
	StructDuOptRow x
ORDER BY
	x.Id

