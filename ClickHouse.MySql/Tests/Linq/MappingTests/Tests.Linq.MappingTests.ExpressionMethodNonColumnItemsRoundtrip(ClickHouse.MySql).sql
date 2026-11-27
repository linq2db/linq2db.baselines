-- ClickHouse.MySql ClickHouse
INSERT INTO ExpressionMethodItemsEntity
(
	Id,
	Items
)
VALUES
(
	1,
	'A;B'
)

-- ClickHouse.MySql ClickHouse
SELECT
	t1.Id,
	t1.Items
FROM
	ExpressionMethodItemsEntity t1

