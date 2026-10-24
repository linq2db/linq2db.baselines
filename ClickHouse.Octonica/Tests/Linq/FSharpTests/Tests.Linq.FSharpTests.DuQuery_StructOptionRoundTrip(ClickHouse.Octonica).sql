-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
SELECT
	x.Key
FROM
	StructDuOptRow x
ORDER BY
	x.Id

