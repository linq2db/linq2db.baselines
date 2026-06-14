-- ClickHouse.MySql ClickHouse

INSERT INTO EntityInsertTest
(
	Id,
	Name,
	Version,
	CreatedAt,
	CreatedBy
)
VALUES
(
	1,
	'n1',
	7,
	NULL,
	'u1'
)

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Name,
	t1.Version,
	t1.CreatedAt,
	t1.CreatedBy
FROM
	EntityInsertTest t1
LIMIT 2

