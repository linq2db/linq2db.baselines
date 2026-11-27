-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 1
DECLARE $Items NVarChar(3) -- String
SET     $Items = 'A;B'

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

-- DuckDB
SELECT
	t1.Id,
	t1.Items
FROM
	ExpressionMethodItemsEntity t1

