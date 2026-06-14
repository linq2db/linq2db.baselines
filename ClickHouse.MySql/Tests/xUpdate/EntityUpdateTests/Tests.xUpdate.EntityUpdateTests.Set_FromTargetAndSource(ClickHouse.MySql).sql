-- ClickHouse.MySql ClickHouse

ALTER TABLE
	EntityUpdateTest
UPDATE
	Name = 'n',
	Version = Version + 3,
	UpdatedAt = NULL,
	UpdatedBy = NULL
WHERE
	Id = 1

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Name,
	t1.Version,
	t1.UpdatedAt,
	t1.UpdatedBy
FROM
	EntityUpdateTest t1
LIMIT 2

