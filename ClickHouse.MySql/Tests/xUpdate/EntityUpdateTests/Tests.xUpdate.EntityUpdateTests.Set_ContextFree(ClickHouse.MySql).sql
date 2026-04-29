-- ClickHouse.MySql ClickHouse

ALTER TABLE
	EntityUpdateTest
UPDATE
	Name = 'x',
	Version = 5,
	UpdatedAt = toDateTime64('2026-06-01 00:00:00.0000000', 7),
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

