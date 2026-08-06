-- ClickHouse.Octonica ClickHouse
INSERT INTO Issue5540
(
	Id,
	Items
)
VALUES
(
	1,
	'A;B'
)

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.Items
FROM
	Issue5540 t1

