-- YDB Ydb
DECLARE $p_1 Int32
SET     $p_1 = 1

$p = 	SELECT
		c_1.ParentID as ParentID,
		c_1.ChildID as ChildID
	FROM
		Child c_1
	WHERE
		c_1.ChildID > 0
;

SELECT
	c_2.ParentID as ParentID,
	c_2.ChildID as ChildID
FROM
	$p c_2
WHERE
	c_2.ParentID = $p_1

