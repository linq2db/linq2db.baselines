-- ClickHouse.MySql ClickHouse
INSERT INTO PrivateDuRow
(
	Id,
	Key
)
VALUES
(
	1,
	7
)

-- ClickHouse.MySql ClickHouse
SELECT
	x.Key
FROM
	PrivateDuRow x
ORDER BY
	x.Id

