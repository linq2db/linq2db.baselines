-- YDB Ydb

$CTE_1 = 	SELECT
		c_1.ParentID + 1 as V
	FROM
		Child c_1
	LIMIT 1
;

SELECT
	p.ParentID as ParentID,
	$CTE_1 as V
FROM
	Parent p

