-- YDB Ydb
DECLARE Id Int32
SET     Id = 1
DECLARE Items Text(3) -- String
SET     Items = 'A;B'u

INSERT INTO ExpressionMethodItemsEntity
(
	Id,
	Items
)
VALUES
(
	$Id,
	$Items
)

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Items as Items
FROM
	ExpressionMethodItemsEntity t1

