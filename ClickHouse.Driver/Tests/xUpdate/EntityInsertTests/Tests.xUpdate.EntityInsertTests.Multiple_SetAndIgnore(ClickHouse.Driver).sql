-- ClickHouse.Driver ClickHouse

INSERT INTO EntityInsertTest
(
	Id,
	Name,
	Version,
	CreatedAt
)
VALUES
(
	1,
	'n',
	101,
	toDateTime64('2026-06-01 00:00:00.0000000', 7)
)

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Name,
	t1.Version,
	t1.CreatedAt,
	t1.CreatedBy
FROM
	EntityInsertTest t1
LIMIT 2

