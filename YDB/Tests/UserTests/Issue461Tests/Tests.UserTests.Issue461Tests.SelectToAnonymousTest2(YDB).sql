-- YDB Ydb

$CTE_1 = 	SELECT
		l.ParentID + 1 as Id
	FROM
		Child l
	LIMIT 1
;
$CTE_2 = 	SELECT
		l_1.ParentID as ParentID
	FROM
		Child l_1
	LIMIT 1
;

SELECT
	$CTE_1 as Id,
	$CTE_2 as ParentID
FROM
	Parent sep

