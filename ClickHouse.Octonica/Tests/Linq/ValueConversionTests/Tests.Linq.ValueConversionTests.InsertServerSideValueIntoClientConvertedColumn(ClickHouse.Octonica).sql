-- ClickHouse.Octonica ClickHouse
INSERT INTO Issue5975Row
(
	Id,
	Plain,
	Date
)
VALUES
(
	1,
	now(),
	now()
)

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.Plain,
	t1.Date
FROM
	Issue5975Row t1
LIMIT 2

