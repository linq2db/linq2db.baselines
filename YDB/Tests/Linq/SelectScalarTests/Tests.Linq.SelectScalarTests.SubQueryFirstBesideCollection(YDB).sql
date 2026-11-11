-- YDB Ydb
DECLARE take Int32
SET     take = 2

SELECT
	t1.ParentID as ParentID,
	t1.ChildID as ChildID
FROM
	Child t1
ORDER BY
	t1.ChildID
LIMIT $take

-- YDB Ydb
$CTE_1 = 	SELECT
		t1.ParentID as FirstId
	FROM
		Parent t1
	ORDER BY
		t1.ParentID
	LIMIT 1
;

SELECT
	$CTE_1 as FirstId

