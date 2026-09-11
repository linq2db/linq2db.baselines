-- ClickHouse.Driver ClickHouse
INSERT INTO DuRow
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
INSERT INTO DuRow
(
	Id,
	Key
)
VALUES
(
	2,
	20
)

-- ClickHouse.Driver ClickHouse
SELECT
	x.Id,
	x.Key
FROM
	DuRow x
WHERE
	x.Key = 10

