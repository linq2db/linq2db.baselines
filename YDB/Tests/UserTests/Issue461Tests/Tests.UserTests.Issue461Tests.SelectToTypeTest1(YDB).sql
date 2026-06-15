-- YDB Ydb

$CTE_1 = 	SELECT
		l.ParentID + 1 as Id
	FROM
		Child l
	LIMIT 1
;

SELECT
	$CTE_1 as Id
FROM
	Parent sep

