-- ClickHouse.Driver ClickHouse
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

-- ClickHouse.Driver ClickHouse
SELECT
	x.Key
FROM
	PrivateDuRow x
ORDER BY
	x.Id

