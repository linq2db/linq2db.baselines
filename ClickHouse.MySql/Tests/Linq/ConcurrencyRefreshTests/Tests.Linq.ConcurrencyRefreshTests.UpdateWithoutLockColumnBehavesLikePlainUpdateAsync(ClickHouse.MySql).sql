-- ClickHouse.MySql ClickHouse
INSERT INTO ConcurrencyRefreshNoLock
(
	Id,
	Stamp,
	Value
)
VALUES
(
	1,
	5,
	'initial'
)

-- ClickHouse.MySql ClickHouse
ALTER TABLE
	ConcurrencyRefreshNoLock
UPDATE
	Stamp = 5,
	Value = 'updated'
WHERE
	Id = 1

-- ClickHouse.MySql ClickHouse
SELECT
	r.Id,
	r.Stamp,
	r.Value
FROM
	ConcurrencyRefreshNoLock r
WHERE
	r.Id = 1
LIMIT 2

