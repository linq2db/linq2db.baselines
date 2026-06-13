-- YDB Ydb

$CTE_1 = 	SELECT
		c_1.ParentID as ParentID
	FROM
		Child c_1
	WHERE
		c_1.ParentID > 0
	ORDER BY
		c_1.ParentID
	LIMIT 1
;
$CTE_2 = 	SELECT
		c_2.ParentID as ParentID
	FROM
		Child c_2
	WHERE
		c_2.ChildID > -100
	ORDER BY
		c_2.ParentID
	LIMIT 1
;
$CTE_3 = 	SELECT
		c_3.ChildID as ChildID
	FROM
		Child c_3
	WHERE
		c_3.ChildID > -100
	ORDER BY
		c_3.ParentID
	LIMIT 1
;

SELECT
	$CTE_1 as First1,
	$CTE_2 as ParentID,
	$CTE_3 as ChildID
FROM
	Parent p
ORDER BY
	p.ParentID

