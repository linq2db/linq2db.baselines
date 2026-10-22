-- YDB Ydb
DECLARE $EmptyCount Int32
SET     $EmptyCount = 0
DECLARE $ItemsCount Int32
SET     $ItemsCount = 2

INSERT INTO CountTarget
(
	Id,
	EmptyCount,
	ItemsCount
)
VALUES
(
	1,
	$EmptyCount,
	$ItemsCount
)

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.EmptyCount as EmptyCount,
	t1.ItemsCount as ItemsCount
FROM
	CountTarget t1
LIMIT 2

