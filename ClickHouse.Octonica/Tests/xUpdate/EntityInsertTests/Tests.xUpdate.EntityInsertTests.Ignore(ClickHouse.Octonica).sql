-- ClickHouse.Octonica ClickHouse
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
	1,
	NULL
)

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.Name,
	t1.Version,
	t1.CreatedAt,
	t1.CreatedBy
FROM
	EntityInsertTest t1
LIMIT 2

