-- YDB Ydb

$Parent = 	SELECT
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
	$Parent c_2
WHERE
	c_2.ParentID > 0

