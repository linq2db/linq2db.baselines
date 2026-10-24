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
	x.Key
FROM
	DuRow x
ORDER BY
	x.Id

