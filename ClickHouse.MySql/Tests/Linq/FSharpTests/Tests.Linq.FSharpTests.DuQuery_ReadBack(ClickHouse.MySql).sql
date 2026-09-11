-- ClickHouse.MySql ClickHouse
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

-- ClickHouse.MySql ClickHouse
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

-- ClickHouse.MySql ClickHouse
SELECT
	x.Key
FROM
	DuRow x
ORDER BY
	x.Id

