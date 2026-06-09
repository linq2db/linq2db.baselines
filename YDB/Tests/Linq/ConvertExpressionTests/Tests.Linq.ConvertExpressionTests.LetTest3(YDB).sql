-- YDB Ydb

$CTE_1 = 	SELECT
		t1.ParentID as ParentID
	FROM
		Child t1
	LIMIT 1
;

SELECT
	$CTE_1 as ParentID
FROM
	Parent p

