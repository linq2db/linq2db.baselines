-- YDB Ydb

$CTE_1 = 	SELECT
		COUNT(*) as Count_1
	FROM
		Child t1
;

SELECT
	$CTE_1 as Count_1
FROM
	Parent p

