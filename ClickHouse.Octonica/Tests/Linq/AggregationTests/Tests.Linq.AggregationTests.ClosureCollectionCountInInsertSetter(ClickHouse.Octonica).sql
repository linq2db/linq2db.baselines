-- ClickHouse.Octonica ClickHouse
INSERT INTO CountTarget
(
	Id,
	EmptyCount,
	ItemsCount
)
VALUES
(
	1,
	0,
	2
)

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.EmptyCount,
	t1.ItemsCount
FROM
	CountTarget t1
LIMIT 2

