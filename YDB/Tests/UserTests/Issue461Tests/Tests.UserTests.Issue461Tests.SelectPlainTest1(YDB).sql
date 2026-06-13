-- YDB Ydb

$CTE_1 = 	SELECT
		c_1.ParentID + 1 as c1
	FROM
		Child c_1
	LIMIT 1
;

SELECT
	$CTE_1 as c1
FROM
	Parent p

