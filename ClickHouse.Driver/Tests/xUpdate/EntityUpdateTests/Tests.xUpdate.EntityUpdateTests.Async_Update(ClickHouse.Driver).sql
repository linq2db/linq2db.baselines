-- ClickHouse.Driver ClickHouse

ALTER TABLE
	EntityUpdateTest
UPDATE
	Name = 'async',
	Version = 3,
	UpdatedAt = NULL,
	UpdatedBy = NULL
WHERE
	Id = 1

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Name,
	t1.Version,
	t1.UpdatedAt,
	t1.UpdatedBy
FROM
	EntityUpdateTest t1
LIMIT 2

