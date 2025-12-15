-- ClickHouse.Driver ClickHouse

INSERT INTO TableWithIdentity
(
	Id,
	Value
)
VALUES
(
	543,
	123
)

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	TableWithIdentity t1
LIMIT 2

