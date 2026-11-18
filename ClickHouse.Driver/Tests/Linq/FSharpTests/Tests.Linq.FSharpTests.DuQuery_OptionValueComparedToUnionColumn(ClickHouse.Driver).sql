-- ClickHouse.Driver ClickHouse
INSERT INTO DuPairRow
(
	Id,
	Key,
	OptKey
)
VALUES
(
	1,
	10,
	10
)

-- ClickHouse.Driver ClickHouse
INSERT INTO DuPairRow
(
	Id,
	Key,
	OptKey
)
VALUES
(
	2,
	20,
	21
)

-- ClickHouse.Driver ClickHouse
INSERT INTO DuPairRow
(
	Id,
	Key,
	OptKey
)
VALUES
(
	3,
	30,
	NULL
)

-- ClickHouse.Driver ClickHouse
SELECT
	x.Id
FROM
	DuPairRow x
WHERE
	x.OptKey = x.Key OR x.OptKey IS NULL AND x.Key IS NULL

