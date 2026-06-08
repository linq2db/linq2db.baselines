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
	'first',
	11,
	NULL,
	'u1'
)

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
	2,
	'second',
	21,
	NULL,
	'u2'
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
ORDER BY
	t1.Id

