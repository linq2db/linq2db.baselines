-- YDB Ydb

$CTE_1 = 	SELECT DISTINCT
		c_1.ParentID as ParentID,
		c_1.ChildID as ChildID
	FROM
		Child c_1
	WHERE
		c_1.ParentID > 1
;

SELECT
	COUNT(*) as Count_1
FROM
	$CTE_1 c_2

