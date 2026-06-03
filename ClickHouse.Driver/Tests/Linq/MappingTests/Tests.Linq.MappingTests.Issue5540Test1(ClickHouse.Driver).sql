-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

SELECT
	t1.Id,
	t1.Items
FROM
	Issue5540 t1

