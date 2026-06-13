-- YDB Ydb

$CTE_1 = 	SELECT
		t1.ChildID as ChildID
	FROM
		Child t1
	LIMIT 1
;

SELECT
	$CTE_1 as ChildID
FROM
	Parent p

