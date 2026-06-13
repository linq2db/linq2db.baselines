-- YDB Ydb

$CTE_1 = 	SELECT
		child_1.ParentID as Child_ParentID,
		child_1.ChildID as Child_ChildID
	FROM
		Child child_1
;

SELECT
	p.ParentID as ParentID,
	p.Value1 as Value1,
	c_1.Child_ParentID as ParentID_1,
	c_1.Child_ChildID as ChildID
FROM
	Parent p
		INNER JOIN $CTE_1 c_1 ON p.ParentID = c_1.Child_ParentID

-- YDB Ydb

SELECT
	p.ParentID as ParentID,
	p.Value1 as Value1,
	c_1.ParentID as ParentID_1,
	c_1.ChildID as ChildID
FROM
	Parent p
		INNER JOIN Child c_1 ON p.ParentID = c_1.ParentID

