-- YDB Ydb

$CTE_1 = 	SELECT
		t1.ParentID as ParentID
	FROM
		Child t1
	LIMIT 1
;
$CTE_2 = 	SELECT
		t2.ChildID as ChildID
	FROM
		Child t2
	LIMIT 1
;

SELECT
	$CTE_1 as ParentID,
	$CTE_2 as ChildID
FROM
	Parent p

