-- ClickHouse.MySql ClickHouse

ALTER TABLE
	EntityUpdateTest
UPDATE
	Name = 'new1',
	Version = Version + 5,
	UpdatedAt = NULL,
	UpdatedBy = NULL
WHERE
	Id = 1

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	EntityUpdateTest
UPDATE
	Name = 'new2',
	Version = Version + 10,
	UpdatedAt = NULL,
	UpdatedBy = NULL
WHERE
	Id = 2

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Name,
	t1.Version,
	t1.UpdatedAt,
	t1.UpdatedBy
FROM
	EntityUpdateTest t1
ORDER BY
	t1.Id

