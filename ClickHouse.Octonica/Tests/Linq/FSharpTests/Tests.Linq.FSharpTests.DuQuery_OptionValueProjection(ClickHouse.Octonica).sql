-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
SELECT
	x.Key
FROM
	DuOptRow x
WHERE
	x.Key IS NOT NULL
ORDER BY
	x.Id

