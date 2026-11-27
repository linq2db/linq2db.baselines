-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.Items
FROM
	ExpressionMethodItemsEntity t1

